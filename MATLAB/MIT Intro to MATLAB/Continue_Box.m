function varargout = Continue_Box(varargin)
% CONTINUE_BOX MATLAB code for Continue_Box.fig
%      CONTINUE_BOX, by itself, creates a new CONTINUE_BOX or raises the existing
%      singleton*.
%
%      H = CONTINUE_BOX returns the handle to a new CONTINUE_BOX or the handle to
%      the existing singleton*.
%
%      CONTINUE_BOX('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CONTINUE_BOX.M with the given input arguments.
%
%      CONTINUE_BOX('Property','Value',...) creates a new CONTINUE_BOX or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Continue_Box_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Continue_Box_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Continue_Box

% Last Modified by GUIDE v2.5 09-Dec-2014 11:50:51

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Continue_Box_OpeningFcn, ...
                   'gui_OutputFcn',  @Continue_Box_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Continue_Box is made visible.
function Continue_Box_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Continue_Box (see VARARGIN)

% Choose default command line output for Continue_Box
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Continue_Box wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Continue_Box_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
