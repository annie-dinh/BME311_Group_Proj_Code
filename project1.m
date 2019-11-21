v= VideoReader('IMG_1056.mp4');
% while hasFrame(v)
%    frame = readFrame(v);
%    imshow(frame)
%    
%    %pause(1/v.FrameRate;
% end


%I would take the example for VideoReader and modify the code to explain -
%%// Paramters
sampling_factor = 8;
resizing_params = [1000 1200];

%%// Input video
video = VideoReader('IMG_1056.mp4');

%%// Setup other parameters
nFrames = floor(video.NumberOfFrame/sampling_factor); %%// xyloObj.NumberOfFrames;
vidHeight = resizing_params(1); %// xyloObj.Height;
vidWidth = resizing_params(1); %// xyloObj.Width;

%// Preallocate movie structure.
mov(1:nFrames) = struct('cdata', zeros(vidHeight, vidWidth, 3, 'uint8'),'colormap',[]);

%// Read one frame at a time.
for k = 1 :nFrames
    IMG = read(video, (k-1)*sampling_factor+1);
    %// IMG = some_operation(IMG);
    mov(k).cdata = imresize(IMG,[vidHeight vidWidth]);
end

%// Size a figure based on the video's width and height.
hf = figure;
set(hf, 'position', [150 150 vidWidth vidHeight])

%// Play back the movie once at the video's frame rate.
movie(hf, mov, 1, video.FrameRate);

% 
% for nFrames = 1:30
%     [video(:,:,nFrames),map] =imshow('IMG_1056.mp4',nFrames);
% end
% montage(video,map);
%         
 numFrames = 0;
 while hasFrame(v)
    readFrame(v);
    numFrames = numFrames +1;
 end

%  v= VideoReader('IMG_1056.mp4');
% numFrames = ceil(v.Framerate*v.Duration);




%% Code Based off of Video Posted on BB
% Create .jpg files of all frames of video (240 frames total)
a = VideoReader('IMG_1056.mp4');
for img  = 1:a.NumberOfFrames
    filename = strcat('frame', num2str(img), '.jpg');
    b = read(a, img);
    imwrite(b, filename)
end

%% Frame Analysis
% Overlay frames 173 & 201 (ball @ rest -> first bounce) into 1 picture
I_rest = imread('frame173.jpg');
I_bounce = imread('frame201.jpg');
I_overlay = imfuse(I_rest, I_bounce); % Overlay frames into composite
imagesc(I_overlay) % Display composite
ball_pts = ginput(2); % Manually input points for ball's locations

% Ball is located @ following coords for @ rest & first bounce:
% [1581.79032258065,550.674966352625; 921.145161290323,540.500000000000]
