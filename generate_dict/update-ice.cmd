chcp 65001
py gen_dict_with_shape.py -i D:\Workspace\Rime\rime-flypy-extended\rime-ice\cn_dicts\8105.dict.yaml    -x zrmfast -o flypy_zrmfast_8105.dict.yaml
py gen_dict_with_shape.py -i D:\Workspace\Rime\rime-flypy-extended\rime-ice\cn_dicts\41448.dict.yaml   -x zrmfast -o flypy_zrmfast_41448.dict.yaml
py gen_dict_with_shape.py -i D:\Workspace\Rime\rime-flypy-extended\rime-ice\cn_dicts\base.dict.yaml    -x zrmfast -o flypy_zrmfast_base.dict.yaml
py gen_dict_with_shape.py -i D:\Workspace\Rime\rime-flypy-extended\rime-ice\cn_dicts\ext.dict.yaml     -x zrmfast -o flypy_zrmfast_ext.dict.yaml
py gen_dict_with_shape.py -i D:\Workspace\Rime\rime-flypy-extended\rime-ice\cn_dicts\others.dict.yaml  -x zrmfast -o flypy_zrmfast_others.dict.yaml
py gen_dict_with_shape.py -i D:\Workspace\Rime\rime-flypy-extended\rime-ice\cn_dicts\tencent.dict.yaml -x zrmfast -o flypy_zrmfast_tencent.dict.yaml

py gen_dict_with_shape.py -i D:\Workspace\Rime\rime-flypy-extended\rime-ice\cn_dicts\8105.dict.yaml    -x flypy -o flypy_flypy_8105.dict.yaml
py gen_dict_with_shape.py -i D:\Workspace\Rime\rime-flypy-extended\rime-ice\cn_dicts\41448.dict.yaml   -x flypy -o flypy_flypy_41448.dict.yaml
py gen_dict_with_shape.py -i D:\Workspace\Rime\rime-flypy-extended\rime-ice\cn_dicts\base.dict.yaml    -x flypy -o flypy_flypy_base.dict.yaml
py gen_dict_with_shape.py -i D:\Workspace\Rime\rime-flypy-extended\rime-ice\cn_dicts\ext.dict.yaml     -x flypy -o flypy_flypy_ext.dict.yaml
py gen_dict_with_shape.py -i D:\Workspace\Rime\rime-flypy-extended\rime-ice\cn_dicts\others.dict.yaml  -x flypy -o flypy_flypy_others.dict.yaml
py gen_dict_with_shape.py -i D:\Workspace\Rime\rime-flypy-extended\rime-ice\cn_dicts\tencent.dict.yaml -x flypy -o flypy_flypy_tencent.dict.yaml

REM copy flypy_zrmfast_8105.dict.yaml+flypy_zrmfast_41448.dict.yaml+flypy_zrmfast_base.dict.yaml+flypy_zrmfast_ext.dict.yaml+flypy_zrmfast_others.dict.yaml flypy_zrmfast_ice.dict.yaml
REM copy flypy_flypy_8105.dict.yaml+flypy_flypy_41448.dict.yaml+flypy_flypy_base.dict.yaml+flypy_flypy_ext.dict.yaml+flypy_flypy_others.dict.yaml flypy_flypy_ice.dict.yaml

REM sed -i "/^$/d"           flypy_zrmfast_ice.dict.yaml
REM sed -i "/^#.*/d"         flypy_zrmfast_ice.dict.yaml
REM sed -i "/^---.*/d"       flypy_zrmfast_ice.dict.yaml
REM sed -i "/^\.\.\..*/d"    flypy_zrmfast_ice.dict.yaml
REM sed -i "/^name: .*/d"    flypy_zrmfast_ice.dict.yaml
REM sed -i "/^version: .*/d" flypy_zrmfast_ice.dict.yaml
REM sed -i "/^sort: .*/d"    flypy_zrmfast_ice.dict.yaml

REM sed -i "/^$/d"           flypy_flypy_ice.dict.yaml
REM sed -i "/^#.*/d"         flypy_flypy_ice.dict.yaml
REM sed -i "/^---.*/d"       flypy_flypy_ice.dict.yaml
REM sed -i "/^\.\.\..*/d"    flypy_flypy_ice.dict.yaml
REM sed -i "/^name: .*/d"    flypy_flypy_ice.dict.yaml
REM sed -i "/^version: .*/d" flypy_flypy_ice.dict.yaml
REM sed -i "/^sort: .*/d"    flypy_flypy_ice.dict.yaml

rmdir /s /q ..\cn_dict_ext\
mkdir ..\cn_dict_ext\
move *.dict.yaml ..\cn_dict_ext\

REM del sed*
REM del flypy_zrmfast*.yaml
REM del flypy_flypy*.yaml
pause