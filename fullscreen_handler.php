<?php
header('Content-Type: application/json');

$data = json_decode(file_get_contents('php://input'), true);

$isFullscreen = $data['isFullscreen'];

if ($isFullscreen) {
    echo json_encode(['message' => 'You are now in fullscreen mode.']);
} else {
    echo json_encode(['message' => 'You are no longer in fullscreen mode.']);
}
