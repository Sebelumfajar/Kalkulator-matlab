function varargout = kalkulator(varargin)
% KALKULATOR MATLAB code for kalkulator.fig
%      KALKULATOR, by itself, creates a new KALKULATOR or raises the existing
%      singleton*.
%
%      H = KALKULATOR returns the handle to a new KALKULATOR or the handle to
%      the existing singleton*.
%
%      KALKULATOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in KALKULATOR.M with the given input arguments.
%
%      KALKULATOR('Property','Value',...) creates a new KALKULATOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before kalkulator_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to kalkulator_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help kalkulator

% Last Modified by GUIDE v2.5 15-Apr-2019 15:44:34

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @kalkulator_OpeningFcn, ...
                   'gui_OutputFcn',  @kalkulator_OutputFcn, ...
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


% --- Executes just before kalkulator is made visible.
function kalkulator_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to kalkulator (see VARARGIN)

% Choose default command line output for kalkulator
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
% x = imread('C:\Users\Ario\Pictures\ITS.jpg');
% axes(handles.axes2);
% imshow(x);
% y = imread('C:\Users\Ario\Pictures\mtk.png');
% axes(handles.axes1);
% imshow(y);
% m = imread('C:\Users\Ario\Pictures\trisna1.jpg');
% axes(handles.axes3);
% imshow(m);
% n = imread('C:\Users\Ario\Pictures\ario1.jpg');
% axes(handles.axes4);
% imshow(n);
% o = imread('C:\Users\Ario\Pictures\edwina1.jpg');
% axes(handles.axes5);
% imshow(o);


% --- Outputs from this function are returned to the command line.
function varargout = kalkulator_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



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


% --- Executes on button press in tombol1.
function tombol1_Callback(hObject, eventdata, handles)
a = get(handles.hasil, 'String');
n = length(a);
if n ==1 && a=='0'||a(1)== '='
    set(handles.hasil,'String','1');
elseif a(n) == ')'
    set(handles.hasil,'String',a);
elseif (a(n)=='0' && (a(n-1)=='*'||a(n-1)=='/'||a(n-1)=='+'||a(n-1)=='-'||a(n-1)=='^'))||(a(n)=='i'&& a(n-1)=='p')||a(n)==')'
    a(n)='1';   
    set(handles.hasil,'String',a);
else
    tampung = [a '1'];
    set(handles.hasil,'String',tampung);
end

% --- Executes on button press in tombol0.
function tombol0_Callback(hObject, eventdata, handles)
a = get(handles.hasil, 'String');
n = length(a);
if n ==1 && a=='0'||a(1)== '='
    set(handles.hasil,'String','0');
elseif a(n) == ')'
    set(handles.hasil,'String',a);
elseif (a(n)=='0' && (a(n-1)=='*'||a(n-1)=='/'||a(n-1)=='+'||a(n-1)=='-'||a(n-1)=='^'||a(n-1)=='('))||(a(n)=='i'&& a(n-1)=='p')
    a(n)='0';   
    set(handles.hasil,'String',a);
else
    tampung = [a '0'];
    set(handles.hasil,'String',tampung);
end



% --- Executes on button press in tombol2.
function tombol2_Callback(hObject, eventdata, handles)
a = get(handles.hasil, 'String');
n = length(a);
if n ==1 && a=='0'||a(1)== '='
    set(handles.hasil,'String','2');
elseif a(n) == ')'
    set(handles.hasil,'String',a);
elseif (a(n)=='0' && (a(n-1)=='*'||a(n-1)=='/'||a(n-1)=='+'||a(n-1)=='-'||a(n-1)=='^'))||(a(n)=='i'&& a(n-1)=='p')||a(n)==')'
    a(n)='2';   
    set(handles.hasil,'String',a);
else
    tampung = [a '2'];
    set(handles.hasil,'String',tampung);
end


% --- Executes on button press in tombol3.
function tombol3_Callback(hObject, eventdata, handles)
a = get(handles.hasil, 'String');
n = length(a);
if n ==1 && a=='0'||a(1)== '='
    set(handles.hasil,'String','3');
elseif a(n) == ')'
    set(handles.hasil,'String',a);
elseif (a(n)=='0' && (a(n-1)=='*'||a(n-1)=='/'||a(n-1)=='+'||a(n-1)=='-'||a(n-1)=='^'))||(a(n)=='i'&& a(n-1)=='p')||a(n)==')'
    a(n)='3';   
    set(handles.hasil,'String',a);
else
    tampung = [a '3'];
    set(handles.hasil,'String',tampung);
end

% --- Executes on button press in tambah.
function tambah_Callback(hObject, eventdata, handles)
a = get(handles.hasil, 'String');
n = length(a);
if a(n)=='*'||a(n)=='/'||a(n)=='+'||a(n)=='-'||a(n)== '('
    a(n)='+';
    set(handles.hasil,'String',a);
elseif a(1)== '='
    tampung = [a(3:n) '+'];
    set(handles.hasil,'String',tampung);
else
    tampung = [a '+'];
    set(handles.hasil,'String',tampung);
end


% --- Executes on button press in titik.
function titik_Callback(hObject, eventdata, handles)
a = get(handles.hasil, 'String');
n = length(a);
b=0;
c=0;
for i=1:n
    if a(i)=='.'
        for j=i+1:n
            if a(j)=='*'||a(j)=='/'||a(j)=='+'||a(j)=='-'
                c=c+1;
                break;
            end
        end
        b=b+1;
    end
end
if b>=1&&c==b-1 || a(n)=='*'||a(n)=='/'||a(n)=='+'||a(n)=='-'|| a(n)== '('
    set(handles.hasil,'String',a);
elseif a(1)== '='
    tampung = [a(3:n) '.'];
    set(handles.hasil,'String',tampung);
else
    tampung = [a '.'];
    set(handles.hasil,'String',tampung);
end


% --- Executes on button press in samadengan.
function samadengan_Callback(hObject, eventdata, handles)
a = (str2num(get(handles.hasil, 'String')));
b = ((get(handles.hasil, 'String')));
c = length(b);
tampung = ['= ' num2str(a)];
set(handles.hasil,'String',tampung);
if c == 0
    msgbox('Tidak Boleh Kosong','bad');
elseif b(1)== '='
    set(handles.hasil,'String',b);
else
    set(handles.hasil,'String',tampung);
end


% --- Executes on button press in kurang.
function kurang_Callback(hObject, eventdata, handles)
a = get(handles.hasil, 'String');
n = length(a);
if a(n)=='*'||a(n)=='/'||a(n)=='+'||a(n)=='-'||a(n)== '('
    a(n)='-';
    set(handles.hasil,'String',a);
elseif a(1)== '='
    tampung = [a(3:n) '-'];
    set(handles.hasil,'String',tampung);
else
    tampung = [a '-'];
    set(handles.hasil,'String',tampung);
end


% --- Executes on button press in tombol4.
function tombol4_Callback(hObject, eventdata, handles)
a = get(handles.hasil, 'String');
n = length(a);
if n ==1 && a=='0'||a(1)== '='
    set(handles.hasil,'String','4');
elseif a(n) == ')'
    set(handles.hasil,'String',a);
elseif (a(n)=='0' && (a(n-1)=='*'||a(n-1)=='/'||a(n-1)=='+'||a(n-1)=='-'||a(n-1)=='^'))||(a(n)=='i'&& a(n-1)=='p')||a(n)==')'
    a(n)='4';   
    set(handles.hasil,'String',a);
else
    tampung = [a '4'];
    set(handles.hasil,'String',tampung);
end

% --- Executes on button press in tombol5.
function tombol5_Callback(hObject, eventdata, handles)
a = get(handles.hasil, 'String');
n = length(a);
if n ==1 && a=='0'||a(1)== '='
    set(handles.hasil,'String','5');
elseif a(n) == ')'
    set(handles.hasil,'String',a);
elseif (a(n)=='0' && (a(n-1)=='*'||a(n-1)=='/'||a(n-1)=='+'||a(n-1)=='-'||a(n-1)=='^'))||(a(n)=='i'&& a(n-1)=='p')||a(n)==')'
    a(n)='5';   
    set(handles.hasil,'String',a);
else
    tampung = [a '5'];
    set(handles.hasil,'String',tampung);
end


% --- Executes on button press in tombol6.
function tombol6_Callback(hObject, eventdata, handles)
a = get(handles.hasil, 'String');
n = length(a);
if n ==1 && a=='0'||a(1)== '='
    set(handles.hasil,'String','6');
elseif a(n) == ')'
    set(handles.hasil,'String',a);
elseif (a(n)=='0' && (a(n-1)=='*'||a(n-1)=='/'||a(n-1)=='+'||a(n-1)=='-'||a(n-1)=='^'))||(a(n)=='i'&& a(n-1)=='p')||a(n)==')'
        a(n)='6';
       set(handles.hasil,'String',a);
else
    tampung = [a '6'];
    set(handles.hasil,'String',tampung);
end


% --- Executes on button press in bagi.
function bagi_Callback(hObject, eventdata, handles)
a = get(handles.hasil, 'String');
n = length(a);
if a(n)=='*'||a(n)=='/'||a(n)=='+'||a(n)=='-'||a(n)== '('
    a(n)='/';
    set(handles.hasil,'String',a);
elseif a(1)== '='
    tampung = [a(3:n) '/'];
    set(handles.hasil,'String',tampung);
else
    tampung = [a '/'];
    set(handles.hasil,'String',tampung);
end


% --- Executes on button press in kali.
function kali_Callback(hObject, eventdata, handles)
a = get(handles.hasil, 'String');
n = length(a);
if a(n)=='*'||a(n)=='/'||a(n)=='+'||a(n)=='-'||a(n)== '('
        a(n)='*';
    set(handles.hasil,'String',a);
elseif a(1)== '='
    tampung = [a(3:n) '*'];
    set(handles.hasil,'String',tampung);
else
    tampung = [a '*'];
    set(handles.hasil,'String',tampung);
end


% --- Executes on button press in tombol9.
function tombol9_Callback(hObject, eventdata, handles)
a = get(handles.hasil, 'String');
n = length(a);
if n ==1 && a=='0'||a(1)== '='
    set(handles.hasil,'String','9');
elseif a(n) == ')'
    set(handles.hasil,'String',a);
elseif (a(n)=='0' && (a(n-1)=='*'||a(n-1)=='/'||a(n-1)=='+'||a(n-1)=='-'||a(n-1)=='^'))||(a(n)=='i'&& a(n-1)=='p')||a(n)==')'
    a(n)='9';   
    set(handles.hasil,'String',a);
else
    tampung = [a '9'];
    set(handles.hasil,'String',tampung);
end


% --- Executes on button press in tombol8.
function tombol8_Callback(hObject, eventdata, handles)
a = get(handles.hasil, 'String');
n = length(a);
if n ==1 && a=='0'||a(1)== '='
    set(handles.hasil,'String','8');
elseif a(n) == ')'
    set(handles.hasil,'String',a);
elseif (a(n)=='0' && (a(n-1)=='*'||a(n-1)=='/'||a(n-1)=='+'||a(n-1)=='-'||a(n-1)=='^'))||(a(n)=='i'&& a(n-1)=='p')||a(n)==')'
    a(n)='8';   
    set(handles.hasil,'String',a);
else
    tampung = [a '8'];
    set(handles.hasil,'String',tampung);
end


% --- Executes on button press in tombol7.
function tombol7_Callback(hObject, eventdata, handles)
a = get(handles.hasil, 'String');
n = length(a);
if n ==1 && a=='0'||a(1)== '='
    set(handles.hasil,'String','7');
elseif a(n) == ')'
    set(handles.hasil,'String',a);
elseif (a(n)=='0' && (a(n-1)=='*'||a(n-1)=='/'||a(n-1)=='+'||a(n-1)=='-'||a(n-1)=='^'))||(a(n)=='i'&& a(n-1)=='p')||a(n)==')'
    a(n)='7';   
    set(handles.hasil,'String',a);
else
    tampung = [a '7'];
    set(handles.hasil,'String',tampung);
end


% --- Executes on button press in pangkat.
function pangkat_Callback(hObject, eventdata, handles)
a = get(handles.hasil, 'String');
n = length(a);
if a(n)=='*'||a(n)=='/'||a(n)=='+'||a(n)=='-'||a(n)== '('
    a(n)='^';
    set(handles.hasil,'String',a);
elseif a(1)== '='
    tampung = [a(3:n) '^'];
    set(handles.hasil,'String',tampung);
else
    tampung = [a '^'];
    set(handles.hasil,'String',tampung);
end


% --- Executes on button press in del.
function del_Callback(hObject, eventdata, handles)
a = get(handles.hasil, 'String');
n = length(a);
if n==1
    set(handles.hasil,'String','0');
else
    set(handles.hasil,'String',a(1:n-1));
end


% --- Executes on button press in akar.
function akar_Callback(hObject, eventdata, handles)
a = get(handles.hasil, 'String');
n = length(a);
if n ==1 && a=='0'||a(1)== '='
    set(handles.hasil,'String','sqrt(');
elseif a(n)=='0' && (a(n-1)=='*'||a(n-1)=='/'||a(n-1)=='+'||a(n-1)=='-')
       tampung =[a(1:n-1) 'sqrt('];
       set(handles.hasil,'String',tampung);
elseif (a(n)=='i' && a(n-1)=='p')||a(n)=='0'||a(n)=='1'||a(n)=='2'||a(n)=='3'...
        ||a(n)=='4'||a(n)=='5'||a(n)=='6'||a(n)=='7'||a(n)=='8'||a(n)=='9'
        set(handles.hasil,'String',a);
else
    tampung = [a 'sqrt('];
    set(handles.hasil,'String',tampung);
end


% --- Executes on button press in negatif.
function negatif_Callback(hObject, eventdata, handles)
a = get(handles.hasil,'String');
n = length(a);
b=1;
for i=n:-1:1
   if (a(i)=='*'||a(i)=='/'||a(i)=='+'||a(i)=='-'||a(i)=='^'||a(i)=='(')
      b=i;
      break;
   end
end
if a(n)=='*'||a(n)=='/'||a(n)=='+'||a(n)=='-'||a(n)== '('||a(n) =='^'
    if a(n) == '-' && (a(n-1)=='*'||a(n-1)=='/'||a(n-1)=='+'||a(n-1)=='-'||a(n-1)== '('||a(n-1)== '^')
        set(handles.hasil, 'String', a(1:n-1));
    else
        tampung = [a '-'];
        set(handles.hasil, 'String', tampung);
    end
elseif a(1)== '='
    if a(3) == '-'
        set(handles.hasil, 'String', a(4:n));
    else
        tampung =['-' a(3:n)];
        set(handles.hasil, 'String', tampung);
    end
elseif b~=1
     if a(b) == '-' &&  (a(b-1)=='*'||a(b-1)=='/'||a(b-1)=='+'||a(b-1)=='-'||a(b-1)=='^'||a(b-1)=='(')
        tampung = [a(1:b-1) a(b+1:n)];
        set(handles.hasil, 'String', tampung);
    else
        tampung =[a(1:b) '-' a(b+1:n)];
        set(handles.hasil, 'String', tampung);
    end
else
    if a(1) == '-'
        set(handles.hasil, 'String', a(2:n));
    else
        tampung =['-' a];
        set(handles.hasil, 'String', tampung);
    end
end



% --- Executes on button press in kurung1.
function kurung1_Callback(hObject, eventdata, handles)
a = get(handles.hasil, 'String');
n = length(a);
if a(1)=='0'||a(1)== '='
    set(handles.hasil,'String','(');
elseif (a(n)=='i' && a(n-1)=='p')||a(n)== '0'||a(n)=='1'||a(n)=='2'||a(n)=='3'...
        ||a(n)=='4'||a(n)=='5'||a(n)=='6'||a(n)=='7'||a(n)=='8'||a(n)=='9'||a(n)==')'
    set(handles.hasil,'String',a);
elseif (a(n)=='0' && (a(n-1)=='*'||a(n-1)=='/'||a(n-1)=='+'||a(n-1)=='-'))||(a(n)=='i'&& a(n-1)=='p')
    a(n)= '(';   
    set(handles.hasil,'String',a);
elseif a(1)== '='
    tampung = [a(3:n) '('];
    set(handles.hasil,'String',tampung);
else
    tampung = [a '('];
    set(handles.hasil,'String',tampung);
end


% --- Executes on button press in kurung2.
function kurung2_Callback(hObject, eventdata, handles)
a = get(handles.hasil, 'String');
n = length(a);
b=0;
c=0;
for i=1:n
    if a(i)== '('
        b=b+1;
    end
    if a(i) == ')'
        c=c+1;
    end
end
if a(n)=='*'||a(n)=='/'||a(n)=='+'||a(n)=='-'||a(n)== '.'||a(n)== '('||a(1)== '='
    set(handles.hasil,'String',a);
elseif b>c
    tampung = [a ')'];
    set(handles.hasil,'String',tampung);
end


% --- Executes on button press in pi.
function pi_Callback(hObject, eventdata, handles)
a = get(handles.hasil, 'String');
n = length(a);
if n ==1 && a=='0'||a(1)== '='
    set(handles.hasil,'String','pi');
elseif a(n)=='0' && (a(n-1)=='*'||a(n-1)=='/'||a(n-1)=='+'||a(n-1)=='-')
       tampung = [a(1:n-1) 'pi'];
       set(handles.hasil,'String',tampung);
elseif (a(n)=='i' && a(n-1)=='p')||a(n)=='0'||a(n)=='1'||a(n)=='2'||a(n)=='3'...
        ||a(n)=='4'||a(n)=='5'||a(n)=='6'||a(n)=='7'||a(n)=='8'||a(n)=='9'
        set(handles.hasil,'String',a);
else
    tampung = [a 'pi'];
    set(handles.hasil,'String',tampung);
end


% --- Executes on button press in reset.
function reset_Callback(hObject, eventdata, handles)
set(handles.hasil, 'String','0');


% --- Executes on button press in jajal.
function jajal_Callback(hObject, eventdata, handles)
a = get(handles.hasil, 'String');
set(handles.hasil,'String',a,'ForegroundColor','red','FontSize',18,'FontWeight','bold');

% --- Executes during object creation, after setting all properties.
function jajal_CreateFcn(hObject, eventdata, handles)
% hObject    handle to jajal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in normal.
function normal_Callback(hObject, eventdata, handles)
% hObject    handle to normal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of normal


% --- Executes on button press in bold.
function bold_Callback(hObject, eventdata, handles)
% hObject    handle to bold (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of bold


% --- Executes on button press in italic.
function italic_Callback(hObject, eventdata, handles)
% hObject    handle to italic (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of italic


% --- Executes on selection change in pilwarna.
function pilwarna_Callback(hObject, eventdata, handles)
warna = get(handles.pilwarna,'value');
a = get(handles.hasil, 'String');
if warna == 1
    set(handles.hasil,'String',a,'ForegroundColor','black');
elseif warna == 2
    set(handles.hasil,'String',a,'ForegroundColor','red');
elseif warna == 3
    set(handles.hasil,'String',a,'ForegroundColor','green');
elseif warna == 4
    set(handles.hasil,'String',a,'ForegroundColor','blue');
elseif warna == 5
    set(handles.hasil,'String',a,'ForegroundColor','yellow');
elseif warna == 6
    set(handles.hasil,'String',a,'ForegroundColor','cyan');
elseif warna == 7
    set(handles.hasil,'String',a,'ForegroundColor','magenta');
elseif warna == 8
    set(handles.hasil,'String',a,'ForegroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function pilwarna_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pilwarna (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider_Callback(hObject, eventdata, handles)
S = get(handles.slider, 'value')+2;
set(handles.nilai, 'String', num2str(S));
a = get(handles.hasil,'String');
set(handles.hasil,'String',a,'FontSize',S);


% --- Executes during object creation, after setting all properties.
function slider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider3_Callback(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider4_Callback(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in size1.
function size1_Callback(hObject, eventdata, handles)
% hObject    handle to size1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of size1


% --- Executes on button press in checkbox3.
function checkbox3_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox3


% --- Executes on button press in checkbox2.
function checkbox2_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox2


% --- Executes on button press in checkbox4.
function checkbox4_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox4


% --- Executes when selected object is changed in pilstyle.
function pilstyle_SelectionChangeFcn(hObject, eventdata, handles)
pil = get(handles.pilstyle, 'SelectedObject');
style = get(pil,'String');
a = get(handles.hasil, 'String');
switch style
    case 'Normal'
        set(handles.hasil,'String',a,'FontWeight','normal','FontAngle','normal');
        set(handles.normal,'BackgroundColor','yellow');
        set(handles.bold,'BackgroundColor','white');
        set(handles.italic,'BackgroundColor','white');
    case 'Bold'
        set(handles.hasil,'String',a,'FontWeight','bold','FontAngle','normal');
         set(handles.normal,'BackgroundColor','white');
        set(handles.bold,'BackgroundColor','yellow');
        set(handles.italic,'BackgroundColor','white');
    case 'Italic'
        set(handles.hasil,'String',a,'FontAngle','italic','FontWeight','normal');
         set(handles.normal,'BackgroundColor','white');
        set(handles.bold,'BackgroundColor','white');
        set(handles.italic,'BackgroundColor','yellow');
end



function nilai_Callback(hObject, eventdata, handles)
n = str2num(get(handles.nilai, 'String'));
a = get(handles.hasil, 'String');
if n >=32
    set(handles.hasil, 'String',a,'FontSize',30);
else
    set(handles.slider,'Value',n-2);
    set(handles.hasil, 'String',a,'FontSize',n);
end



% --- Executes during object creation, after setting all properties.
function nilai_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nilai (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function negatif_CreateFcn(hObject, eventdata, handles)
% hObject    handle to negatif (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on selection change in pil.
function pil_Callback(hObject, eventdata, handles)
warna = get(handles.pil,'value');
a = get(handles.hasil, 'String');
if warna == 1
    set(handles.hasil,'String',a,'BackgroundColor','white');
elseif warna == 2
    set(handles.hasil,'String',a,'BackgroundColor','red');
elseif warna == 3
    set(handles.hasil,'String',a,'BackgroundColor','green');
elseif warna == 4
    set(handles.hasil,'String',a,'BackgroundColor','blue');
elseif warna == 5
    set(handles.hasil,'String',a,'BackgroundColor','yellow');
elseif warna == 6
    set(handles.hasil,'String',a,'BackgroundColor','cyan');
elseif warna == 7
    set(handles.hasil,'String',a,'BackgroundColor','magenta');
elseif warna == 8
    set(handles.hasil,'String',a,'BackgroundColor','black');
end


% --- Executes during object creation, after setting all properties.
function pil_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in acos.
function acos_Callback(hObject, eventdata, handles)
a = get(handles.hasil, 'String');
n = length(a);
if n ==1 && a=='0'||a(1)== '='
    set(handles.hasil,'String','acosd(');
elseif a(n)=='0' && (a(n-1)=='*'||a(n-1)=='/'||a(n-1)=='+'||a(n-1)=='-')
       tampung =[a(1:n-1) 'acosd('];
       set(handles.hasil,'String',tampung);
elseif (a(n)=='i' && a(n-1)=='p')||a(n)=='0'||a(n)=='1'||a(n)=='2'||a(n)=='3'...
        ||a(n)=='4'||a(n)=='5'||a(n)=='6'||a(n)=='7'||a(n)=='8'||a(n)=='9'
        set(handles.hasil,'String',a);
else
    tampung = [a 'acosd('];
    set(handles.hasil,'String',tampung);
end


% --- Executes on button press in sin.
function sin_Callback(hObject, eventdata, handles)
a = get(handles.hasil, 'String');
n = length(a);
if n ==1 && a=='0'||a(1)== '='
    set(handles.hasil,'String','sind(');
elseif a(n)=='0' && (a(n-1)=='*'||a(n-1)=='/'||a(n-1)=='+'||a(n-1)=='-')
       tampung =[a(1:n-1) 'sind('];
       set(handles.hasil,'String',tampung);
elseif (a(n)=='i' && a(n-1)=='p')||a(n)=='0'||a(n)=='1'||a(n)=='2'||a(n)=='3'...
        ||a(n)=='4'||a(n)=='5'||a(n)=='6'||a(n)=='7'||a(n)=='8'||a(n)=='9'
        set(handles.hasil,'String',a);
else
    tampung = [a 'sind('];
    set(handles.hasil,'String',tampung);
end


% --- Executes on button press in tan.
function tan_Callback(hObject, eventdata, handles)
a = get(handles.hasil, 'String');
n = length(a);
if n ==1 && a=='0'||a(1)== '='
    set(handles.hasil,'String','tand(');
elseif a(n)=='0' && (a(n-1)=='*'||a(n-1)=='/'||a(n-1)=='+'||a(n-1)=='-')
       tampung =[a(1:n-1) 'tand('];
       set(handles.hasil,'String',tampung);
elseif (a(n)=='i' && a(n-1)=='p')||a(n)=='0'||a(n)=='1'||a(n)=='2'||a(n)=='3'...
        ||a(n)=='4'||a(n)=='5'||a(n)=='6'||a(n)=='7'||a(n)=='8'||a(n)=='9'
        set(handles.hasil,'String',a);
else
    tampung = [a 'tand('];
    set(handles.hasil,'String',tampung);
end


% --- Executes on button press in asin.
function asin_Callback(hObject, eventdata, handles)
a = get(handles.hasil, 'String');
n = length(a);
if n ==1 && a=='0'||a(1)== '='
    set(handles.hasil,'String','asind(');
elseif a(n)=='0' && (a(n-1)=='*'||a(n-1)=='/'||a(n-1)=='+'||a(n-1)=='-')
       tampung =[a(1:n-1) 'asind('];
       set(handles.hasil,'String',tampung);
elseif (a(n)=='i' && a(n-1)=='p')||a(n)=='0'||a(n)=='1'||a(n)=='2'||a(n)=='3'...
        ||a(n)=='4'||a(n)=='5'||a(n)=='6'||a(n)=='7'||a(n)=='8'||a(n)=='9'
        set(handles.hasil,'String',a);
else
    tampung = [a 'asind('];
    set(handles.hasil,'String',tampung);
end


% --- Executes on button press in acos.
function pushbutton106_Callback(hObject, eventdata, handles)
% hObject    handle to acos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in atan.
function atan_Callback(hObject, eventdata, handles)
a = get(handles.hasil, 'String');
n = length(a);
if n ==1 && a=='0'||a(1)== '='
    set(handles.hasil,'String','atand(');
elseif a(n)=='0' && (a(n-1)=='*'||a(n-1)=='/'||a(n-1)=='+'||a(n-1)=='-')
       tampung =[a(1:n-1) 'atand('];
       set(handles.hasil,'String',tampung);
elseif (a(n)=='i' && a(n-1)=='p')||a(n)=='0'||a(n)=='1'||a(n)=='2'||a(n)=='3'...
        ||a(n)=='4'||a(n)=='5'||a(n)=='6'||a(n)=='7'||a(n)=='8'||a(n)=='9'
        set(handles.hasil,'String',a);
else
    tampung = [a 'atand('];
    set(handles.hasil,'String',tampung);
end


% --- Executes on button press in cos.
function cos_Callback(hObject, eventdata, handles)
a = get(handles.hasil, 'String');
n = length(a);
if n ==1 && a=='0'||a(1)== '='
    set(handles.hasil,'String','cosd(');
elseif a(n)=='0' && (a(n-1)=='*'||a(n-1)=='/'||a(n-1)=='+'||a(n-1)=='-')
       tampung =[a(1:n-1) 'cosd('];
       set(handles.hasil,'String',tampung);
elseif (a(n)=='i' && a(n-1)=='p')||a(n)=='0'||a(n)=='1'||a(n)=='2'||a(n)=='3'...
        ||a(n)=='4'||a(n)=='5'||a(n)=='6'||a(n)=='7'||a(n)=='8'||a(n)=='9'
        set(handles.hasil,'String',a);
else
    tampung = [a 'cosd('];
    set(handles.hasil,'String',tampung);
end
