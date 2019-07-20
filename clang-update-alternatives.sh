#!/usr/bin/env sh

# Remove all existing alternatives
sudo update-alternatives --remove-all llvm
sudo update-alternatives --remove-all clang

# exit on first error
set -e

# llvm
sudo update-alternatives \
--install /usr/lib/llvm              		llvm             		    /usr/lib/llvm-8 20 \
--slave   /usr/bin/llvm-ar           		llvm-ar          		    /usr/bin/llvm-ar-8 \
--slave   /usr/bin/llvm-as           		llvm-as          		    /usr/bin/llvm-as-8 \
--slave   /usr/bin/llvm-bcanalyzer   		llvm-bcanalyzer  		    /usr/bin/llvm-bcanalyzer-8 \
--slave   /usr/bin/llvm-cat       		    llvm-cat      			    /usr/bin/llvm-cat-8  \
--slave   /usr/bin/llvm-cfi-verify      	llvm-cfi-verify      	    /usr/bin/llvm-cfi-verify-8  \
--slave   /usr/bin/llvm-config       		llvm-config      		    /usr/bin/llvm-config-8  \
--slave   /usr/bin/llvm-cov          		llvm-cov         		    /usr/bin/llvm-cov-8 \
--slave   /usr/bin/llvm-c-test          	llvm-c-test         	    /usr/bin/llvm-c-test-8 \
--slave   /usr/bin/llvm-cvtres          	llvm-cvtres         	    /usr/bin/llvm-cvtres-8 \
--slave   /usr/bin/llvm-cxxdump          	llvm-cxxdump         	    /usr/bin/llvm-cxxdump-8 \
--slave   /usr/bin/llvm-cxxfilt         	llvm-cxxfilt         	    /usr/bin/llvm-cxxfilt-8 \
--slave   /usr/bin/llvm-cxxmap          	llvm-cxxmap        		    /usr/bin/llvm-cxxmap-8 \
--slave   /usr/bin/llvm-diff         		llvm-diff       		    /usr/bin/llvm-diff-8 \
--slave   /usr/bin/llvm-dis          		llvm-dis         		    /usr/bin/llvm-dis-8 \
--slave   /usr/bin/llvm-dlltool         	llvm-dlltool         	    /usr/bin/llvm-dlltool-8 \
--slave   /usr/bin/llvm-dwarfdump    		llvm-dwarfdump   		    /usr/bin/llvm-dwarfdump-8 \
--slave   /usr/bin/llvm-dwp          		llvm-dwp         		    /usr/bin/llvm-dwp-8 \
--slave   /usr/bin/llvm-elfabi          	llvm-elfabi         	    /usr/bin/llvm-elfabi-8 \
--slave   /usr/bin/llvm-exegesis          	llvm-exegesis         	    /usr/bin/llvm-exegesis-8 \
--slave   /usr/bin/llvm-extract          	llvm-extract         	    /usr/bin/llvm-extract-8 \
--slave   /usr/bin/llvm-lib          		llvm-lib         		    /usr/bin/llvm-lib-8 \
--slave   /usr/bin/llvm-link         		llvm-link        		    /usr/bin/llvm-link-8 \
--slave   /usr/bin/llvm-lto2           		llvm-lto2          		    /usr/bin/llvm-lto2-8  \
--slave   /usr/bin/llvm-lto           		llvm-lto          		    /usr/bin/llvm-lto-8  \
--slave   /usr/bin/llvm-mc           		llvm-mc          		    /usr/bin/llvm-mc-8 \
--slave   /usr/bin/llvm-mca           		llvm-mca          		    /usr/bin/llvm-mca-8 \
--slave   /usr/bin/llvm-modextract          llvm-modextract             /usr/bin/llvm-modextract-8 \
--slave   /usr/bin/llvm-mt           		llvm-mt          		    /usr/bin/llvm-mt-8 \
--slave   /usr/bin/llvm-nm           		llvm-nm          		    /usr/bin/llvm-nm-8 \
--slave   /usr/bin/llvm-objcopy      		llvm-objcopy     		    /usr/bin/llvm-objcopy-8 \
--slave   /usr/bin/llvm-objdump      		llvm-objdump     		    /usr/bin/llvm-objdump-8 \
--slave   /usr/bin/llvm-opt-report          llvm-opt-report             /usr/bin/llvm-opt-report-8 \
--slave   /usr/bin/llvm-pdbutil          	llvm-pdbutil          	    /usr/bin/llvm-pdbutil-8  \
--slave   /usr/bin/llvm-PerfectShuffle      llvm-PerfectShuffle         /usr/bin/llvm-PerfectShuffle-8 \
--slave   /usr/bin/llvm-profdata          	llvm-profdata         	    /usr/bin/llvm-profdata-8 \
--slave   /usr/bin/llvm-ranlib      		llvm-ranlib      		    /usr/bin/llvm-ranlib-8 \
--slave   /usr/bin/llvm-rc          		llvm-rc         		    /usr/bin/llvm-rc-8 \
--slave   /usr/bin/llvm-readelf          	llvm-readelf        	    /usr/bin/llvm-readelf-8 \
--slave   /usr/bin/llvm-readobj      		llvm-readobj     		    /usr/bin/llvm-readobj-8 \
--slave   /usr/bin/llvm-rtdyld       		llvm-rtdyld      		    /usr/bin/llvm-rtdyld-8 \
--slave   /usr/bin/llvm-size         		llvm-size        		    /usr/bin/llvm-size-8 \
--slave   /usr/bin/llvm-split         		llvm-split        		    /usr/bin/llvm-split-8 \
--slave   /usr/bin/llvm-stress       		llvm-stress      		    /usr/bin/llvm-stress-8 \
--slave   /usr/bin/llvm-strings         	llvm-strings        	    /usr/bin/llvm-strings-8 \
--slave   /usr/bin/llvm-strip         		llvm-strip        		    /usr/bin/llvm-strip-8 \
--slave   /usr/bin/llvm-symbolizer   		llvm-symbolizer  		    /usr/bin/llvm-symbolizer-8 \
--slave   /usr/bin/llvm-tblgen       		llvm-tblgen      		    /usr/bin/llvm-tblgen-8 \
--slave   /usr/bin/llvm-undname       		llvm-undname      		    /usr/bin/llvm-undname-8 \
--slave   /usr/bin/llvm-xray       		    llvm-xray      			    /usr/bin/llvm-xray-8

# clang
sudo update-alternatives \
--install /usr/bin/clang                	clang        			    /usr/bin/clang-8 10 \
--slave   /usr/bin/clang++              	clang++      			    /usr/bin/clang++-8 \
--slave   /usr/bin/clang-apply-replacements	clang-apply-replacements	/usr/bin/clang-apply-replacements-8 \
--slave   /usr/bin/clang-change-namespace	clang-change-namespace		/usr/bin/clang-change-namespace-8 \
--slave   /usr/bin/clang-check			    clang-check			        /usr/bin/clang-check-8 \
--slave   /usr/bin/clang-cl			        clang-cl			        /usr/bin/clang-cl-8 \
--slave   /usr/bin/clang-cpp			    clang-cpp			        /usr/bin/clang-cpp-8 \
--slave   /usr/bin/clangd			        clangd				        /usr/bin/clangd-8 \
--slave   /usr/bin/clang-extdef-mapping		clang-extdef-mapping		/usr/bin/clang-extdef-mapping-8 \
--slave   /usr/bin/clang-format			    clang-format			    /usr/bin/clang-format-8 \
--slave   /usr/bin/clang-format-diff		clang-format-diff		    /usr/bin/clang-format-diff-8 \
--slave   /usr/bin/clang-import-test		clang-import-test		    /usr/bin/clang-import-test-8 \
--slave   /usr/bin/clang-include-fixer		clang-include-fixer		    /usr/bin/clang-include-fixer-8 \
--slave   /usr/bin/clang-offload-bundler	clang-offload-bundler		/usr/bin/clang-offload-bundler-8 \
--slave   /usr/bin/clang-query			    clang-query			        /usr/bin/clang-query-8 \
--slave   /usr/bin/clang-refactor		    clang-refactor			    /usr/bin/clang-refactor-8 \
--slave   /usr/bin/clang-rename			    clang-rename			    /usr/bin/clang-rename-8 \
--slave   /usr/bin/clang-reorder-fields		clang-reorder-fields		/usr/bin/clang-reorder-fields-8 \
--slave   /usr/bin/scan-view             	scan-view              		/usr/bin/scan-view-8 \
--slave   /usr/bin/scan-build            	scan-build             		/usr/bin/scan-build-8 \
--slave   /usr/bin/scan-build-py         	scan-build-py          		/usr/bin/scan-build-py-8 \
--slave   /usr/bin/bugpoint            		bugpoint             		/usr/bin/bugpoint-8 \
--slave   /usr/bin/c-index-test          	c-index-test           		/usr/bin/c-index-test-8 \
--slave   /usr/bin/diagtool            		diagtool             		/usr/bin/diagtool-8 \
--slave   /usr/bin/find-all-symbols      	find-all-symbols       		/usr/bin/find-all-symbols-8 \
--slave   /usr/bin/git-clang-format		    git-clang-format		    /usr/bin/git-clang-format-8 \
--slave   /usr/bin/hmaptool            		hmaptool             		/usr/bin/hmaptool-8 \
--slave   /usr/bin/modularize            	modularize             		/usr/bin/modularize-8 \
--slave   /usr/bin/obj2yaml            		obj2yaml             		/usr/bin/obj2yaml-8 \
--slave   /usr/bin/opt                  	opt                   		/usr/bin/opt-8 \
--slave   /usr/bin/sancov                	sancov                 		/usr/bin/sancov-8 \
--slave   /usr/bin/sanstats            		sanstats             		/usr/bin/sanstats-8 \
--slave   /usr/bin/verify-uselistorder      verify-uselistorder         /usr/bin/verify-uselistorder-8 \
--slave   /usr/bin/wasm-ld            		wasm-ld             		/usr/bin/wasm-ld-8 \
--slave   /usr/bin/yaml2obj            		yaml2obj             		/usr/bin/yaml2obj-8 \
--slave   /usr/bin/yaml-bench            	yaml-bench             		/usr/bin/yaml-bench-8 \
--slave   /usr/bin/lld                  	lld          			    /usr/bin/lld-8 \
--slave   /usr/bin/lld-link           		lld-link              		/usr/bin/lld-link-8 \
--slave   /usr/bin/lli-child-target         lli-child-target          	/usr/bin/lli-child-target-8 \
--slave   /usr/bin/lli                  	lli          			    /usr/bin/lli-8 \
--slave   /usr/bin/lldb                  	lldb                   		/usr/bin/lldb-8 \
--slave   /usr/bin/lldb-argdumper           lldb-argdumper              /usr/bin/lldb-argdumper-8 \
--slave   /usr/bin/lldb-mi               	lldb-mi                  	/usr/bin/lldb-mi-8 \
--slave   /usr/bin/lldb-server           	lldb-server            		/usr/bin/lldb-server-8 \
--slave   /usr/bin/lldb-test           		lldb-test            		/usr/bin/lldb-test-8 \
--slave   /usr/bin/lldb-vscode           	lldb-vscode            		/usr/bin/lldb-vscode-8 \

# make system default
sudo update-alternatives --install /usr/bin/cc  cc  /usr/bin/clang      100
sudo update-alternatives --install /usr/bin/c++ c++ /usr/bin/clang++    100

