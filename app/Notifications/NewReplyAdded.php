<?php
namespace App\Notifications;
use Illuminate\Bus\Queueable;
use Illuminate\Notifications\Notification;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\MailMessage;

class NewReplyAdded extends Notification
{
  use Queueable;
  public $discussion;

  public function __construct($discussion)
  { $this->discussion = $discussion; }

  public function via($notifiable)
  { return ['mail']; }

  public function toMail($notifiable)
  {
    return (new MailMessage)
           ->greeting('Hello from "Wars of the Roses" discussion forum,')
           ->line('A new reply has been added to a discussion you are watching.')
           ->action('Go to Discussion', route('discussions.show', $this->discussion))
           ->line('Thank you for using our application!');
  }

  public function toArray($notifiable)
  { return []; }
}
