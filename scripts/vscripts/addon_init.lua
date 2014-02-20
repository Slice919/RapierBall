print('\n\nLoading Rapierball!')

function Dynamic_Wrap( mt, name )
    if Convars:GetFloat( 'developer' ) == 1 then
        local function w(...) return mt[name](...) end
        return w
    else
        return mt[name]
    end
end

local totalErrors = 0
local function loadModule(name)
    local status, err = pcall(function()
        -- Load the module
        require(name)
    end)
	
	if not status then
        -- Add to the total errors
        totalErrors = totalErrors+1

        -- Tell the user about it
        print('WARNING: '..name..' failed to load!')
        print(err)
    end
end

loadModule('util')         -- Utilitiy functions
loadModule('json')         -- Json Library
loadModule('rapierball')

if totalErrors == 0 then
    -- No loading issues
    print('Loaded modules successfully!\n')
elseif totalErrors == 1 then
    -- One loading error
    print('1 module failed to load!\n')
else
    -- More than one loading error
    print(totalErrors..' modules failed to load!\n')
end