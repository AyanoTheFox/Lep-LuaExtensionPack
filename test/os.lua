require 'lep'

--#io--
print("the libary" .. os.exist('lum') .. "are here to u") --os.exist return the string if exist a dir with it name
print("all modules in the lum: ")
print("your system is: " .. os.getCurrentOs())

for _ = 1, #os.getDirItems('lum', 'dir') do
    print(os.getDirItems('lum', 'dir')[_])
end