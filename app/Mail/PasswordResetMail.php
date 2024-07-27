<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class PasswordResetMail extends Mailable
{
    use Queueable, SerializesModels;
    public $mailData;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($mailData)
    {
        $this->mailData = $mailData;
    }

    public function build() {
        return $this->subject('Password Reset Mail')
                    ->view('emails.password_reset')
                    ->with([
                        'link' => $this->mailData['link'],
                        'email' => $this->mailData['email'],
                    ]);
    }
}
