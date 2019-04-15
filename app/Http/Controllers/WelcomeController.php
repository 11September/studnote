<?php

namespace App\Http\Controllers;

use App\Feedback;
use App\Mail\SendEmail;
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
