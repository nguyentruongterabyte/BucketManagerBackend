<?php

namespace App\Models;

class ResponseObject
{
    private $status;
    private $message;
    private $result;

    public function __construct($status, $message, $result = null)
    {
        $this->status = $status;
        $this->message = $message;
        $this->result = $result;
    }

    public function getStatus()
    {
        return $this->status;
    }

    public function setStatus($status)
    {
        $this->status = $status;
    }

    public function getMessage()
    {
        return $this->message;
    }

    public function setMessage($message)
    {
        $this->message = $message;
    }

    public function getResult()
    {
        return $this->result;
    }

    public function setResult($result)
    {
        $this->result = $result;
    }

    public function toArray()
    {
        return [
            'status' => $this->status,
            'message' => $this->message,
            'result' => $this->result
        ];
    }
}