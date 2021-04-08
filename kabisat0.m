function varargout = kabisat0(varargin)
% KABISAT0 MATLAB code for kabisat0.fig
%      KABISAT0, by itself, creates a new KABISAT0 or raises the existing
%      singleton*.
%
%      H = KABISAT0 returns the handle to a new KABISAT0 or the handle to
%      the existing singleton*.
%
%      KABISAT0('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in KABISAT0.M with the given input arguments.
%
%      KABISAT0('Property','Value',...) creates a new KABISAT0 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before kabisat0_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to kabisat0_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help kabisat0

% Last Modified by GUIDE v2.5 08-Apr-2021 10:34:50

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @kabisat0_OpeningFcn, ...
                   'gui_OutputFcn',  @kabisat0_OutputFcn, ...
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


% --- Executes just before kabisat0 is made visible.
function kabisat0_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to kabisat0 (see VARARGIN)

% Choose default command line output for kabisat0
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes kabisat0 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = kabisat0_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function masukan_Callback(hObject, eventdata, handles)
% hObject    handle to masukan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of masukan as text
%        str2double(get(hObject,'String')) returns contents of masukan as a double


% --- Executes during object creation, after setting all properties.
function masukan_CreateFcn(hObject, eventdata, handles)
% hObject    handle to masukan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in cek.
function cek_Callback(hObject, eventdata, handles)
% hObject    handle to cek (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cek = str2double(get(handles.masukan,'string'));
if mod(cek,4)==0
    hasil = 'Benar, tahun tersebut kabisat';
elseif mod(cek,100)==0
    hasil = 'Benar, tahun tersebut kabisat';
elseif mod(cek,400)==0
    hasil = 'Benar, tahun tersebut kabisat';
else 
    hasil = 'Tahun tersebut bukan kabisat';
end
jawaban = num2str(hasil)
set(handles.hasil,'string',(jawaban));

function hasil_Callback(hObject, eventdata, handles)
% hObject    handle to hasil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hasil as text
%        str2double(get(hObject,'String')) returns contents of hasil as a double


% --- Executes during object creation, after setting all properties.
function hasil_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hasil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
