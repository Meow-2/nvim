# $(VIM_FILEPATH)    # 当前 buffer 的文件名全路径
# $(VIM_FILENAME)    # 当前 buffer 的文件名（没有前面的路径）
# $(VIM_FILEDIR)     # 当前 buffer 的文件所在路径
# $(VIM_FILEEXT)     # 当前 buffer 的扩展名
# $(VIM_FILENOEXT)   # 当前 buffer 的主文件名（没有前面路径和后面扩展名）
# $(VIM_PATHNOEXT)   # 带路径的主文件名（$VIM_FILEPATH 去掉扩展名）
# $(VIM_CWD)         # 当前 Vim 目录（:pwd 命令返回的）
# $(VIM_RELDIR)      # 相对于当前路径的文件名
# $(VIM_RELNAME)     # 相对于当前路径的文件路径
# $(VIM_ROOT)        # 当前 buffer 的项目根目录
# $(VIM_CWORD)       # 光标下的单词
# $(VIM_CFILE)       # 光标下的文件名
# $(VIM_CLINE)       # 光标停留在当前文件的多少行（行号）
# $(VIM_GUI)         # 是否在 GUI 下面运行？
# $(VIM_VERSION)     # Vim 版本号
# $(VIM_COLUMNS)     # 当前屏幕宽度
# $(VIM_LINES)       # 当前屏幕高度
# $(VIM_SVRNAME)     # v:servername 的值
# $(VIM_DIRNAME)     # 当前文件夹目录名，比如 vim 在 ~/github/prj1/src，那就是 src
# $(VIM_PRONAME)     # 当前项目目录名，比如项目根目录在 ~/github/prj1，那就是 prj1
# $(VIM_INIFILE)     # 当前任务的 ini 文件名
# $(VIM_INIHOME)     # 当前任务的 ini 文件的目录（方便调用一些和配置文件位置相关的脚本）
cmake -B build \
    -GNinja \
    -DCMAKE_BUILD_TYPE=Debug \
    -DCMAKE_EXPORT_COMPILE_COMMANDS=Enable \
    && cmake --build build -j16
