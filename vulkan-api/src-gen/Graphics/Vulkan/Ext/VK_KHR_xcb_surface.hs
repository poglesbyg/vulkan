{-# OPTIONS_GHC -fno-warn-orphans#-}
{-# OPTIONS_GHC -fno-warn-unused-imports#-}
{-# OPTIONS_HADDOCK not-home#-}
{-# LANGUAGE CPP                      #-}
{-# LANGUAGE DataKinds                #-}
{-# LANGUAGE FlexibleInstances        #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE MagicHash                #-}
{-# LANGUAGE PatternSynonyms          #-}
{-# LANGUAGE Strict                   #-}
{-# LANGUAGE TypeApplications         #-}
{-# LANGUAGE TypeFamilies             #-}
{-# LANGUAGE ViewPatterns             #-}
module Graphics.Vulkan.Ext.VK_KHR_xcb_surface
       (-- * Vulkan extension: @VK_KHR_xcb_surface@
        -- |
        --
        -- supported: @vulkan@
        --
        -- contact: @Jesse Hall @critsec,Ian Elliott @ianelliottus@
        --
        -- author: @KHR@
        --
        -- type: @instance@
        --
        -- platform: @xcb@
        --
        -- Extension number: @6@
        --
        -- Required extensions: 'VK_KHR_surface'.
        --

        -- ** Required extensions: 'VK_KHR_surface'.
        module Graphics.Vulkan.Types.BaseTypes,
        module Graphics.Vulkan.Types.Enum.StructureType,
        module Graphics.Vulkan.Types.Bitmasks,
        module Graphics.Vulkan.Types.Struct.PlatformXcbKhr,
        -- > #include "vk_platform.h"
        VkCreateXcbSurfaceKHR, pattern VkCreateXcbSurfaceKHR,
        HS_vkCreateXcbSurfaceKHR, PFN_vkCreateXcbSurfaceKHR,
        vkCreateXcbSurfaceKHR, vkCreateXcbSurfaceKHRUnsafe,
        vkCreateXcbSurfaceKHRSafe,
        VkGetPhysicalDeviceXcbPresentationSupportKHR,
        pattern VkGetPhysicalDeviceXcbPresentationSupportKHR,
        HS_vkGetPhysicalDeviceXcbPresentationSupportKHR,
        PFN_vkGetPhysicalDeviceXcbPresentationSupportKHR,
        vkGetPhysicalDeviceXcbPresentationSupportKHR,
        vkGetPhysicalDeviceXcbPresentationSupportKHRUnsafe,
        vkGetPhysicalDeviceXcbPresentationSupportKHRSafe,
        module Graphics.Vulkan.Marshal,
        module Graphics.Vulkan.Types.Enum.InternalAllocationType,
        module Graphics.Vulkan.Types.Enum.Result,
        module Graphics.Vulkan.Types.Enum.SystemAllocationScope,
        module Graphics.Vulkan.Types.Funcpointers,
        module Graphics.Vulkan.Types.Handles,
        module Graphics.Vulkan.Types.Include,
        module Graphics.Vulkan.Types.Struct.AllocationCallbacks,
        VK_KHR_XCB_SURFACE_SPEC_VERSION,
        pattern VK_KHR_XCB_SURFACE_SPEC_VERSION,
        VK_KHR_XCB_SURFACE_EXTENSION_NAME,
        pattern VK_KHR_XCB_SURFACE_EXTENSION_NAME,
        pattern VK_STRUCTURE_TYPE_XCB_SURFACE_CREATE_INFO_KHR)
       where
import           GHC.Ptr                                           (Ptr (..))
import           Graphics.Vulkan.Marshal
import           Graphics.Vulkan.Marshal.Proc
import           Graphics.Vulkan.Types.BaseTypes
import           Graphics.Vulkan.Types.Bitmasks
import           Graphics.Vulkan.Types.Enum.InternalAllocationType
import           Graphics.Vulkan.Types.Enum.Result
import           Graphics.Vulkan.Types.Enum.StructureType
import           Graphics.Vulkan.Types.Enum.SystemAllocationScope
import           Graphics.Vulkan.Types.Funcpointers
import           Graphics.Vulkan.Types.Handles
import           Graphics.Vulkan.Types.Include
import           Graphics.Vulkan.Types.Struct.AllocationCallbacks
import           Graphics.Vulkan.Types.Struct.PlatformXcbKhr
import           System.IO.Unsafe                                  (unsafeDupablePerformIO)

pattern VkCreateXcbSurfaceKHR :: CString

pattern VkCreateXcbSurfaceKHR <- (is_VkCreateXcbSurfaceKHR -> True)
  where VkCreateXcbSurfaceKHR = _VkCreateXcbSurfaceKHR

{-# INLINE _VkCreateXcbSurfaceKHR #-}

_VkCreateXcbSurfaceKHR :: CString
_VkCreateXcbSurfaceKHR = Ptr "vkCreateXcbSurfaceKHR\NUL"#

{-# INLINE is_VkCreateXcbSurfaceKHR #-}

is_VkCreateXcbSurfaceKHR :: CString -> Bool
is_VkCreateXcbSurfaceKHR
  = (EQ ==) . cmpCStrings _VkCreateXcbSurfaceKHR

type VkCreateXcbSurfaceKHR = "vkCreateXcbSurfaceKHR"

-- |
-- Success codes: 'VK_SUCCESS'.
--
-- Error codes: 'VK_ERROR_OUT_OF_HOST_MEMORY', 'VK_ERROR_OUT_OF_DEVICE_MEMORY'.
--
-- > VkResult vkCreateXcbSurfaceKHR
-- >     ( VkInstance instance
-- >     , const VkXcbSurfaceCreateInfoKHR* pCreateInfo
-- >     , const VkAllocationCallbacks* pAllocator
-- >     , VkSurfaceKHR* pSurface
-- >     )
--
-- <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/html/vkspec.html#vkCreateXcbSurfaceKHR vkCreateXcbSurfaceKHR registry at www.khronos.org>
--
-- __Note:__ When @useNativeFFI-1-0@ cabal flag is enabled, this function is linked statically
--           as a @foreign import@ call to C Vulkan loader.
--           Otherwise, it is looked up dynamically at runtime using dlsym-like machinery (platform-dependent).
--
-- Independently of the flag setting, you can lookup the function manually at runtime:
--
-- > myCreateXcbSurfaceKHR <- vkGetInstanceProc @VkCreateXcbSurfaceKHR vkInstance
--
-- or less efficient:
--
-- > myCreateXcbSurfaceKHR <- vkGetProc @VkCreateXcbSurfaceKHR
--
-- __Note:__ @vkCreateXcbSurfaceKHRUnsafe@ and @vkCreateXcbSurfaceKHRSafe@ are the @unsafe@ and @safe@
--           FFI imports of this function, respectively. @vkCreateXcbSurfaceKHR@ is an alias
--           of @vkCreateXcbSurfaceKHRUnsafe@ when the @useUnsafeFFIDefault@ cabal flag
--           is enabled; otherwise, it is an alias of @vkCreateXcbSurfaceKHRSafe@.
--
--
#ifdef NATIVE_FFI_VK_VERSION_1_0
foreign import ccall unsafe "vkCreateXcbSurfaceKHR"
               vkCreateXcbSurfaceKHRUnsafe ::
               VkInstance -- ^ instance
                          ->
                 Ptr VkXcbSurfaceCreateInfoKHR -- ^ pCreateInfo
                                               ->
                   Ptr VkAllocationCallbacks -- ^ pAllocator
                                             -> Ptr VkSurfaceKHR -- ^ pSurface
                                                                 -> IO VkResult

#else
vkCreateXcbSurfaceKHRUnsafe ::
                            VkInstance -- ^ instance
                                       ->
                              Ptr VkXcbSurfaceCreateInfoKHR -- ^ pCreateInfo
                                                            ->
                                Ptr VkAllocationCallbacks -- ^ pAllocator
                                                          -> Ptr VkSurfaceKHR -- ^ pSurface
                                                                              -> IO VkResult
vkCreateXcbSurfaceKHRUnsafe
  = unsafeDupablePerformIO (vkGetProcUnsafe @VkCreateXcbSurfaceKHR)

{-# NOINLINE vkCreateXcbSurfaceKHRUnsafe #-}
#endif

-- |
-- Success codes: 'VK_SUCCESS'.
--
-- Error codes: 'VK_ERROR_OUT_OF_HOST_MEMORY', 'VK_ERROR_OUT_OF_DEVICE_MEMORY'.
--
-- > VkResult vkCreateXcbSurfaceKHR
-- >     ( VkInstance instance
-- >     , const VkXcbSurfaceCreateInfoKHR* pCreateInfo
-- >     , const VkAllocationCallbacks* pAllocator
-- >     , VkSurfaceKHR* pSurface
-- >     )
--
-- <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/html/vkspec.html#vkCreateXcbSurfaceKHR vkCreateXcbSurfaceKHR registry at www.khronos.org>
--
-- __Note:__ When @useNativeFFI-1-0@ cabal flag is enabled, this function is linked statically
--           as a @foreign import@ call to C Vulkan loader.
--           Otherwise, it is looked up dynamically at runtime using dlsym-like machinery (platform-dependent).
--
-- Independently of the flag setting, you can lookup the function manually at runtime:
--
-- > myCreateXcbSurfaceKHR <- vkGetInstanceProc @VkCreateXcbSurfaceKHR vkInstance
--
-- or less efficient:
--
-- > myCreateXcbSurfaceKHR <- vkGetProc @VkCreateXcbSurfaceKHR
--
-- __Note:__ @vkCreateXcbSurfaceKHRUnsafe@ and @vkCreateXcbSurfaceKHRSafe@ are the @unsafe@ and @safe@
--           FFI imports of this function, respectively. @vkCreateXcbSurfaceKHR@ is an alias
--           of @vkCreateXcbSurfaceKHRUnsafe@ when the @useUnsafeFFIDefault@ cabal flag
--           is enabled; otherwise, it is an alias of @vkCreateXcbSurfaceKHRSafe@.
--
--
#ifdef NATIVE_FFI_VK_VERSION_1_0
foreign import ccall safe "vkCreateXcbSurfaceKHR"
               vkCreateXcbSurfaceKHRSafe ::
               VkInstance -- ^ instance
                          ->
                 Ptr VkXcbSurfaceCreateInfoKHR -- ^ pCreateInfo
                                               ->
                   Ptr VkAllocationCallbacks -- ^ pAllocator
                                             -> Ptr VkSurfaceKHR -- ^ pSurface
                                                                 -> IO VkResult

#else
vkCreateXcbSurfaceKHRSafe ::
                          VkInstance -- ^ instance
                                     ->
                            Ptr VkXcbSurfaceCreateInfoKHR -- ^ pCreateInfo
                                                          ->
                              Ptr VkAllocationCallbacks -- ^ pAllocator
                                                        -> Ptr VkSurfaceKHR -- ^ pSurface
                                                                            -> IO VkResult
vkCreateXcbSurfaceKHRSafe
  = unsafeDupablePerformIO (vkGetProcSafe @VkCreateXcbSurfaceKHR)

{-# NOINLINE vkCreateXcbSurfaceKHRSafe #-}
#endif

-- |
-- Success codes: 'VK_SUCCESS'.
--
-- Error codes: 'VK_ERROR_OUT_OF_HOST_MEMORY', 'VK_ERROR_OUT_OF_DEVICE_MEMORY'.
--
-- > VkResult vkCreateXcbSurfaceKHR
-- >     ( VkInstance instance
-- >     , const VkXcbSurfaceCreateInfoKHR* pCreateInfo
-- >     , const VkAllocationCallbacks* pAllocator
-- >     , VkSurfaceKHR* pSurface
-- >     )
--
-- <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/html/vkspec.html#vkCreateXcbSurfaceKHR vkCreateXcbSurfaceKHR registry at www.khronos.org>
--
-- __Note:__ When @useNativeFFI-1-0@ cabal flag is enabled, this function is linked statically
--           as a @foreign import@ call to C Vulkan loader.
--           Otherwise, it is looked up dynamically at runtime using dlsym-like machinery (platform-dependent).
--
-- Independently of the flag setting, you can lookup the function manually at runtime:
--
-- > myCreateXcbSurfaceKHR <- vkGetInstanceProc @VkCreateXcbSurfaceKHR vkInstance
--
-- or less efficient:
--
-- > myCreateXcbSurfaceKHR <- vkGetProc @VkCreateXcbSurfaceKHR
--
-- __Note:__ @vkCreateXcbSurfaceKHRUnsafe@ and @vkCreateXcbSurfaceKHRSafe@ are the @unsafe@ and @safe@
--           FFI imports of this function, respectively. @vkCreateXcbSurfaceKHR@ is an alias
--           of @vkCreateXcbSurfaceKHRUnsafe@ when the @useUnsafeFFIDefault@ cabal flag
--           is enabled; otherwise, it is an alias of @vkCreateXcbSurfaceKHRSafe@.
--
vkCreateXcbSurfaceKHR ::
                      VkInstance -- ^ instance
                                 ->
                        Ptr VkXcbSurfaceCreateInfoKHR -- ^ pCreateInfo
                                                      ->
                          Ptr VkAllocationCallbacks -- ^ pAllocator
                                                    -> Ptr VkSurfaceKHR -- ^ pSurface
                                                                        -> IO VkResult
#ifdef UNSAFE_FFI_DEFAULT
vkCreateXcbSurfaceKHR = vkCreateXcbSurfaceKHRUnsafe
#else
vkCreateXcbSurfaceKHR = vkCreateXcbSurfaceKHRSafe

#endif
{-# INLINE vkCreateXcbSurfaceKHR #-}

-- | Success codes: 'VK_SUCCESS'.
--
--   Error codes: 'VK_ERROR_OUT_OF_HOST_MEMORY', 'VK_ERROR_OUT_OF_DEVICE_MEMORY'.
--
--   > VkResult vkCreateXcbSurfaceKHR
--   >     ( VkInstance instance
--   >     , const VkXcbSurfaceCreateInfoKHR* pCreateInfo
--   >     , const VkAllocationCallbacks* pAllocator
--   >     , VkSurfaceKHR* pSurface
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/html/vkspec.html#vkCreateXcbSurfaceKHR vkCreateXcbSurfaceKHR registry at www.khronos.org>
type HS_vkCreateXcbSurfaceKHR =
     VkInstance -- ^ instance
                ->
       Ptr VkXcbSurfaceCreateInfoKHR -- ^ pCreateInfo
                                     ->
         Ptr VkAllocationCallbacks -- ^ pAllocator
                                   -> Ptr VkSurfaceKHR -- ^ pSurface
                                                       -> IO VkResult

type PFN_vkCreateXcbSurfaceKHR = FunPtr HS_vkCreateXcbSurfaceKHR

foreign import ccall unsafe "dynamic"
               unwrapVkCreateXcbSurfaceKHRUnsafe ::
               PFN_vkCreateXcbSurfaceKHR -> HS_vkCreateXcbSurfaceKHR

foreign import ccall safe "dynamic" unwrapVkCreateXcbSurfaceKHRSafe
               :: PFN_vkCreateXcbSurfaceKHR -> HS_vkCreateXcbSurfaceKHR

instance VulkanProc "vkCreateXcbSurfaceKHR" where
        type VkProcType "vkCreateXcbSurfaceKHR" = HS_vkCreateXcbSurfaceKHR
        vkProcSymbol = _VkCreateXcbSurfaceKHR

        {-# INLINE vkProcSymbol #-}
        unwrapVkProcPtrUnsafe = unwrapVkCreateXcbSurfaceKHRUnsafe

        {-# INLINE unwrapVkProcPtrUnsafe #-}
        unwrapVkProcPtrSafe = unwrapVkCreateXcbSurfaceKHRSafe

        {-# INLINE unwrapVkProcPtrSafe #-}

pattern VkGetPhysicalDeviceXcbPresentationSupportKHR :: CString

pattern VkGetPhysicalDeviceXcbPresentationSupportKHR <-
        (is_VkGetPhysicalDeviceXcbPresentationSupportKHR -> True)
  where VkGetPhysicalDeviceXcbPresentationSupportKHR
          = _VkGetPhysicalDeviceXcbPresentationSupportKHR

{-# INLINE _VkGetPhysicalDeviceXcbPresentationSupportKHR #-}

_VkGetPhysicalDeviceXcbPresentationSupportKHR :: CString
_VkGetPhysicalDeviceXcbPresentationSupportKHR
  = Ptr "vkGetPhysicalDeviceXcbPresentationSupportKHR\NUL"#

{-# INLINE is_VkGetPhysicalDeviceXcbPresentationSupportKHR #-}

is_VkGetPhysicalDeviceXcbPresentationSupportKHR :: CString -> Bool
is_VkGetPhysicalDeviceXcbPresentationSupportKHR
  = (EQ ==) .
      cmpCStrings _VkGetPhysicalDeviceXcbPresentationSupportKHR

type VkGetPhysicalDeviceXcbPresentationSupportKHR =
     "vkGetPhysicalDeviceXcbPresentationSupportKHR"

-- |
-- > VkBool32 vkGetPhysicalDeviceXcbPresentationSupportKHR
-- >     ( VkPhysicalDevice physicalDevice
-- >     , uint32_t queueFamilyIndex
-- >     , xcb_connection_t* connection
-- >     , xcb_visualid_t visual_id
-- >     )
--
-- <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/html/vkspec.html#vkGetPhysicalDeviceXcbPresentationSupportKHR vkGetPhysicalDeviceXcbPresentationSupportKHR registry at www.khronos.org>
--
-- __Note:__ When @useNativeFFI-1-0@ cabal flag is enabled, this function is linked statically
--           as a @foreign import@ call to C Vulkan loader.
--           Otherwise, it is looked up dynamically at runtime using dlsym-like machinery (platform-dependent).
--
-- Independently of the flag setting, you can lookup the function manually at runtime:
--
-- > myGetPhysicalDeviceXcbPresentationSupportKHR <- vkGetInstanceProc @VkGetPhysicalDeviceXcbPresentationSupportKHR vkInstance
--
-- or less efficient:
--
-- > myGetPhysicalDeviceXcbPresentationSupportKHR <- vkGetProc @VkGetPhysicalDeviceXcbPresentationSupportKHR
--
-- __Note:__ @vkGetPhysicalDeviceXcbPresentationSupportKHRUnsafe@ and @vkGetPhysicalDeviceXcbPresentationSupportKHRSafe@ are the @unsafe@ and @safe@
--           FFI imports of this function, respectively. @vkGetPhysicalDeviceXcbPresentationSupportKHR@ is an alias
--           of @vkGetPhysicalDeviceXcbPresentationSupportKHRUnsafe@ when the @useUnsafeFFIDefault@ cabal flag
--           is enabled; otherwise, it is an alias of @vkGetPhysicalDeviceXcbPresentationSupportKHRSafe@.
--
--
#ifdef NATIVE_FFI_VK_VERSION_1_0
foreign import ccall unsafe
               "vkGetPhysicalDeviceXcbPresentationSupportKHR"
               vkGetPhysicalDeviceXcbPresentationSupportKHRUnsafe ::
               VkPhysicalDevice -- ^ physicalDevice
                                ->
                 Word32 -- ^ queueFamilyIndex
                        -> Ptr XcbConnectionT -- ^ connection
                                              -> XcbVisualidT -- ^ visual_id
                                                              -> IO VkBool32

#else
vkGetPhysicalDeviceXcbPresentationSupportKHRUnsafe ::
                                                   VkPhysicalDevice -- ^ physicalDevice
                                                                    ->
                                                     Word32 -- ^ queueFamilyIndex
                                                            ->
                                                       Ptr XcbConnectionT -- ^ connection
                                                                          ->
                                                         XcbVisualidT -- ^ visual_id
                                                                      -> IO VkBool32
vkGetPhysicalDeviceXcbPresentationSupportKHRUnsafe
  = unsafeDupablePerformIO
      (vkGetProcUnsafe @VkGetPhysicalDeviceXcbPresentationSupportKHR)

{-# NOINLINE vkGetPhysicalDeviceXcbPresentationSupportKHRUnsafe #-}
#endif

-- |
-- > VkBool32 vkGetPhysicalDeviceXcbPresentationSupportKHR
-- >     ( VkPhysicalDevice physicalDevice
-- >     , uint32_t queueFamilyIndex
-- >     , xcb_connection_t* connection
-- >     , xcb_visualid_t visual_id
-- >     )
--
-- <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/html/vkspec.html#vkGetPhysicalDeviceXcbPresentationSupportKHR vkGetPhysicalDeviceXcbPresentationSupportKHR registry at www.khronos.org>
--
-- __Note:__ When @useNativeFFI-1-0@ cabal flag is enabled, this function is linked statically
--           as a @foreign import@ call to C Vulkan loader.
--           Otherwise, it is looked up dynamically at runtime using dlsym-like machinery (platform-dependent).
--
-- Independently of the flag setting, you can lookup the function manually at runtime:
--
-- > myGetPhysicalDeviceXcbPresentationSupportKHR <- vkGetInstanceProc @VkGetPhysicalDeviceXcbPresentationSupportKHR vkInstance
--
-- or less efficient:
--
-- > myGetPhysicalDeviceXcbPresentationSupportKHR <- vkGetProc @VkGetPhysicalDeviceXcbPresentationSupportKHR
--
-- __Note:__ @vkGetPhysicalDeviceXcbPresentationSupportKHRUnsafe@ and @vkGetPhysicalDeviceXcbPresentationSupportKHRSafe@ are the @unsafe@ and @safe@
--           FFI imports of this function, respectively. @vkGetPhysicalDeviceXcbPresentationSupportKHR@ is an alias
--           of @vkGetPhysicalDeviceXcbPresentationSupportKHRUnsafe@ when the @useUnsafeFFIDefault@ cabal flag
--           is enabled; otherwise, it is an alias of @vkGetPhysicalDeviceXcbPresentationSupportKHRSafe@.
--
--
#ifdef NATIVE_FFI_VK_VERSION_1_0
foreign import ccall safe
               "vkGetPhysicalDeviceXcbPresentationSupportKHR"
               vkGetPhysicalDeviceXcbPresentationSupportKHRSafe ::
               VkPhysicalDevice -- ^ physicalDevice
                                ->
                 Word32 -- ^ queueFamilyIndex
                        -> Ptr XcbConnectionT -- ^ connection
                                              -> XcbVisualidT -- ^ visual_id
                                                              -> IO VkBool32

#else
vkGetPhysicalDeviceXcbPresentationSupportKHRSafe ::
                                                 VkPhysicalDevice -- ^ physicalDevice
                                                                  ->
                                                   Word32 -- ^ queueFamilyIndex
                                                          ->
                                                     Ptr XcbConnectionT -- ^ connection
                                                                        ->
                                                       XcbVisualidT -- ^ visual_id
                                                                    -> IO VkBool32
vkGetPhysicalDeviceXcbPresentationSupportKHRSafe
  = unsafeDupablePerformIO
      (vkGetProcSafe @VkGetPhysicalDeviceXcbPresentationSupportKHR)

{-# NOINLINE vkGetPhysicalDeviceXcbPresentationSupportKHRSafe #-}
#endif

-- |
-- > VkBool32 vkGetPhysicalDeviceXcbPresentationSupportKHR
-- >     ( VkPhysicalDevice physicalDevice
-- >     , uint32_t queueFamilyIndex
-- >     , xcb_connection_t* connection
-- >     , xcb_visualid_t visual_id
-- >     )
--
-- <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/html/vkspec.html#vkGetPhysicalDeviceXcbPresentationSupportKHR vkGetPhysicalDeviceXcbPresentationSupportKHR registry at www.khronos.org>
--
-- __Note:__ When @useNativeFFI-1-0@ cabal flag is enabled, this function is linked statically
--           as a @foreign import@ call to C Vulkan loader.
--           Otherwise, it is looked up dynamically at runtime using dlsym-like machinery (platform-dependent).
--
-- Independently of the flag setting, you can lookup the function manually at runtime:
--
-- > myGetPhysicalDeviceXcbPresentationSupportKHR <- vkGetInstanceProc @VkGetPhysicalDeviceXcbPresentationSupportKHR vkInstance
--
-- or less efficient:
--
-- > myGetPhysicalDeviceXcbPresentationSupportKHR <- vkGetProc @VkGetPhysicalDeviceXcbPresentationSupportKHR
--
-- __Note:__ @vkGetPhysicalDeviceXcbPresentationSupportKHRUnsafe@ and @vkGetPhysicalDeviceXcbPresentationSupportKHRSafe@ are the @unsafe@ and @safe@
--           FFI imports of this function, respectively. @vkGetPhysicalDeviceXcbPresentationSupportKHR@ is an alias
--           of @vkGetPhysicalDeviceXcbPresentationSupportKHRUnsafe@ when the @useUnsafeFFIDefault@ cabal flag
--           is enabled; otherwise, it is an alias of @vkGetPhysicalDeviceXcbPresentationSupportKHRSafe@.
--
vkGetPhysicalDeviceXcbPresentationSupportKHR ::
                                             VkPhysicalDevice -- ^ physicalDevice
                                                              ->
                                               Word32 -- ^ queueFamilyIndex
                                                      ->
                                                 Ptr XcbConnectionT -- ^ connection
                                                                    -> XcbVisualidT -- ^ visual_id
                                                                                    -> IO VkBool32
#ifdef UNSAFE_FFI_DEFAULT
vkGetPhysicalDeviceXcbPresentationSupportKHR
  = vkGetPhysicalDeviceXcbPresentationSupportKHRUnsafe
#else
vkGetPhysicalDeviceXcbPresentationSupportKHR
  = vkGetPhysicalDeviceXcbPresentationSupportKHRSafe

#endif
{-# INLINE vkGetPhysicalDeviceXcbPresentationSupportKHR #-}

-- | > VkBool32 vkGetPhysicalDeviceXcbPresentationSupportKHR
--   >     ( VkPhysicalDevice physicalDevice
--   >     , uint32_t queueFamilyIndex
--   >     , xcb_connection_t* connection
--   >     , xcb_visualid_t visual_id
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/html/vkspec.html#vkGetPhysicalDeviceXcbPresentationSupportKHR vkGetPhysicalDeviceXcbPresentationSupportKHR registry at www.khronos.org>
type HS_vkGetPhysicalDeviceXcbPresentationSupportKHR =
     VkPhysicalDevice -- ^ physicalDevice
                      ->
       Word32 -- ^ queueFamilyIndex
              -> Ptr XcbConnectionT -- ^ connection
                                    -> XcbVisualidT -- ^ visual_id
                                                    -> IO VkBool32

type PFN_vkGetPhysicalDeviceXcbPresentationSupportKHR =
     FunPtr HS_vkGetPhysicalDeviceXcbPresentationSupportKHR

foreign import ccall unsafe "dynamic"
               unwrapVkGetPhysicalDeviceXcbPresentationSupportKHRUnsafe ::
               PFN_vkGetPhysicalDeviceXcbPresentationSupportKHR ->
                 HS_vkGetPhysicalDeviceXcbPresentationSupportKHR

foreign import ccall safe "dynamic"
               unwrapVkGetPhysicalDeviceXcbPresentationSupportKHRSafe ::
               PFN_vkGetPhysicalDeviceXcbPresentationSupportKHR ->
                 HS_vkGetPhysicalDeviceXcbPresentationSupportKHR

instance VulkanProc "vkGetPhysicalDeviceXcbPresentationSupportKHR"
         where
        type VkProcType "vkGetPhysicalDeviceXcbPresentationSupportKHR" =
             HS_vkGetPhysicalDeviceXcbPresentationSupportKHR
        vkProcSymbol = _VkGetPhysicalDeviceXcbPresentationSupportKHR

        {-# INLINE vkProcSymbol #-}
        unwrapVkProcPtrUnsafe
          = unwrapVkGetPhysicalDeviceXcbPresentationSupportKHRUnsafe

        {-# INLINE unwrapVkProcPtrUnsafe #-}
        unwrapVkProcPtrSafe
          = unwrapVkGetPhysicalDeviceXcbPresentationSupportKHRSafe

        {-# INLINE unwrapVkProcPtrSafe #-}

pattern VK_KHR_XCB_SURFACE_SPEC_VERSION :: (Num a, Eq a) => a

pattern VK_KHR_XCB_SURFACE_SPEC_VERSION = 6

type VK_KHR_XCB_SURFACE_SPEC_VERSION = 6

pattern VK_KHR_XCB_SURFACE_EXTENSION_NAME :: CString

pattern VK_KHR_XCB_SURFACE_EXTENSION_NAME <-
        (is_VK_KHR_XCB_SURFACE_EXTENSION_NAME -> True)
  where VK_KHR_XCB_SURFACE_EXTENSION_NAME
          = _VK_KHR_XCB_SURFACE_EXTENSION_NAME

{-# INLINE _VK_KHR_XCB_SURFACE_EXTENSION_NAME #-}

_VK_KHR_XCB_SURFACE_EXTENSION_NAME :: CString
_VK_KHR_XCB_SURFACE_EXTENSION_NAME = Ptr "VK_KHR_xcb_surface\NUL"#

{-# INLINE is_VK_KHR_XCB_SURFACE_EXTENSION_NAME #-}

is_VK_KHR_XCB_SURFACE_EXTENSION_NAME :: CString -> Bool
is_VK_KHR_XCB_SURFACE_EXTENSION_NAME
  = (EQ ==) . cmpCStrings _VK_KHR_XCB_SURFACE_EXTENSION_NAME

type VK_KHR_XCB_SURFACE_EXTENSION_NAME = "VK_KHR_xcb_surface"

pattern VK_STRUCTURE_TYPE_XCB_SURFACE_CREATE_INFO_KHR ::
        VkStructureType

pattern VK_STRUCTURE_TYPE_XCB_SURFACE_CREATE_INFO_KHR =
        VkStructureType 1000005000
