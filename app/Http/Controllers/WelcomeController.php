<?php

namespace App\Http\Controllers;

use App\Feedback;
use App\Group;
use App\Mail\SendEmail;
use App\Subject;
use App\User;
use App\UserGroup;
use Illuminate\Http\Request;

class WelcomeController extends Controller
{
    public $status = false;

    public function welcome()
    {
        return view('welcome');
    }

    public function example()
    {
        return view('example');
    }

    public function groups()
    {
        $groups = Group::all();

        return view('groups', compact('groups'));
    }

    public function groups_show(Group $group)
    {
        $users = User::whereHas('groups', function ($query) use ($group) {
            $query->where('group_id', $group->id);
        })->get();

        $groups = Group::all();

        return view('groups-group', compact('group', 'groups', 'users'));
    }

    public function subjects()
    {
        $subjects = Subject::all();

        return view('subjects', compact('subjects'));
    }

    public function subjects_show(Subject $subject)
    {
        $subjects = Subject::all();

        return view('subjects-subject', compact('subject', 'subjects'));
    }

    public function marks()
    {
        return view('marks');
    }
    
    public function feedback(Request $request)
    {
        $request->validate([
            'email' => 'required|email|max:255',
            'text' => 'required|min:1',
        ]);

        $feedback = new Feedback();
        $feedback->email = $request->email;
        $feedback->text = $request->text;

        if ($feedback->save()) {
            $this->status = true;
        }

        $message = $request->all();
        \Mail::send(new SendEmail($message));
        if (count(\Mail::failures()) > 0) {
            $this->status = false;
        } else {
            $this->status = true;
        }

        return redirect()->action('WelcomeController@welcome')
            ->with([
                'success' => $this->status,
                'status' => $this->status
                    ? "success"
                    : "danger",
                'message' => $this->status
                    ? "Отзыв был успешно добавлен!"
                    : "Упс, похоже, что-то пошло не так! Пожалуйста, попробуйте позже."
            ], 200);
    }
}
