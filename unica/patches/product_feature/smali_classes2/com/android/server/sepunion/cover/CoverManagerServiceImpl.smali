.class public Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/sepunion/cover/CoverServiceManager$OnCoverStateProvider;
.implements Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisabledByAppListener;


# instance fields
.field public final mAnimationStartCallback:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$1;

.field public final mAutoScreenOn:Lcom/android/server/sepunion/cover/AutoScreenOn;

.field public final mContext:Landroid/content/Context;

.field public final mCoverDisabler:Lcom/android/server/sepunion/cover/CoverDisabler;

.field public final mCoverHideAnimator:Lcom/android/server/sepunion/cover/CoverHideAnimator;

.field public final mCoverManagerAllowLists:Lcom/android/server/sepunion/cover/CoverManagerAllowLists;

.field public final mCoverServiceManager:Lcom/android/server/sepunion/cover/CoverServiceManager;

.field public final mCoverState:Lcom/samsung/android/cover/CoverState;

.field public final mCoverStateLock:Ljava/lang/Object;

.field public final mCoverTestModeUtils:Lcom/android/server/sepunion/cover/CoverTestModeUtils;

.field public final mCoverVerifier:Lcom/android/server/sepunion/cover/CoverVerifier;

.field public final mDisplayFoldListener:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$3;

.field public mGenericCoverServiceController:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

.field public mHallicSensorEventListener:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$7;

.field public final mHandler:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$CoverManagerHandler;

.field public mInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

.field public mInputManagerService:Lcom/android/server/input/InputManagerService;

.field public mIsAttachStateChanged:Z

.field public mIsCoverAppCovered:Z

.field public mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mResolutionMonitorCallback:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$2;

.field public mSensorManager:Landroid/hardware/SensorManager;

.field public final mSleepTokenAcquirer:Lcom/android/server/sepunion/cover/SleepTokenAcquirer;

.field public final mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

.field public final mSupportHallIcSensor:Z

.field public mSystemReady:Z

.field public final mThread:Landroid/os/HandlerThread;

.field public final mUserManager:Landroid/os/UserManager;

.field public mWindowManagerService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v2}, Lcom/samsung/android/cover/CoverState;-><init>()V

    iput-object v2, v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSystemReady:Z

    iput-boolean v2, v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mIsAttachStateChanged:Z

    iput-boolean v2, v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mIsCoverAppCovered:Z

    new-instance v3, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$1;

    invoke-direct {v3, v0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$1;-><init>(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)V

    iput-object v3, v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mAnimationStartCallback:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$1;

    new-instance v3, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$2;

    invoke-direct {v3, v0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$2;-><init>(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)V

    iput-object v3, v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mResolutionMonitorCallback:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$2;

    new-instance v4, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$3;

    invoke-direct {v4, v0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$3;-><init>(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)V

    iput-object v4, v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mDisplayFoldListener:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$3;

    iput-object v1, v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "user"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    iput-object v4, v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v4, "power"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    iput-object v4, v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    new-instance v4, Landroid/os/HandlerThread;

    const-string/jumbo v5, "cover"

    invoke-direct {v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v4, v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    new-instance v5, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$CoverManagerHandler;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$CoverManagerHandler;-><init>(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;Landroid/os/Looper;)V

    iput-object v5, v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mHandler:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$CoverManagerHandler;

    new-instance v6, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$4;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v6, Lcom/android/server/sepunion/cover/CoverVerifier;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput v2, v6, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultClearCoverWidth:I

    iput v2, v6, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultClearCoverHeight:I

    iput-boolean v2, v6, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverVerified:Z

    iput-boolean v2, v6, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    iput-object v1, v6, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v2, :cond_84

    invoke-virtual {v6}, Lcom/android/server/sepunion/cover/CoverVerifier;->getScreenSizeForClearCover()V

    :cond_84
    iput-object v6, v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverVerifier:Lcom/android/server/sepunion/cover/CoverVerifier;

    new-instance v2, Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v2, v1, v6, v0}, Lcom/android/server/sepunion/cover/CoverServiceManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)V

    iput-object v2, v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/sepunion/cover/CoverServiceManager;

    new-instance v2, Lcom/android/server/sepunion/cover/StateNotifier;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v2, v6, v1}, Lcom/android/server/sepunion/cover/StateNotifier;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v2, v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    new-instance v2, Lcom/android/server/sepunion/cover/CoverDisabler;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v2, v6, v1}, Lcom/android/server/sepunion/cover/CoverDisabler;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v2, v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/sepunion/cover/CoverDisabler;

    new-instance v2, Lcom/android/server/sepunion/cover/CoverHideAnimator;

    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v2, v1, v5}, Lcom/android/server/sepunion/cover/CoverHideAnimator;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v2, v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverHideAnimator:Lcom/android/server/sepunion/cover/CoverHideAnimator;

    new-instance v2, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iput-object v5, v2, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->mSignaturesMap:Landroid/util/SparseArray;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v2, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->mAllowList:Ljava/util/HashMap;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v2, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->mPrefixPackage:Ljava/util/ArrayList;

    new-instance v8, Landroid/content/pm/Signature;

    const-string v9, "308204d4308203bca003020102020900d20995a79c0daad6300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303632323132323531325a170d3338313130373132323531325a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100c986384a3e1f2fb206670e78ef232215c0d26f45a22728db99a44da11c35ac33a71fe071c4a2d6825a9b4c88b333ed96f3c5e6c666d60f3ee94c490885abcf8dc660f707aabc77ead3e2d0d8aee8108c15cd260f2e85042c28d2f292daa3c6da0c7bf2391db7841aade8fdf0c9d0defcf77124e6d2de0a9e0d2da746c3670e4ffcdc85b701bb4744861b96ff7311da3603c5a10336e55ffa34b4353eedc85f51015e1518c67e309e39f87639ff178107f109cd18411a6077f26964b6e63f8a70b9619db04306a323c1a1d23af867e19f14f570ffe573d0e3a0c2b30632aaec3173380994be1e341e3a90bd2e4b615481f46db39ea83816448ec35feb1735c1f3020103a382010b30820107301d0603551d0e04160414932c3af70b627a0c7610b5a0e7427d6cfaea3f1e3081d70603551d230481cf3081cc8014932c3af70b627a0c7610b5a0e7427d6cfaea3f1ea181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900d20995a79c0daad6300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100329601fe40e036a4a86cc5d49dd8c1b5415998e72637538b0d430369ac51530f63aace8c019a1a66616a2f1bb2c5fabd6f313261f380e3471623f053d9e3c53f5fd6d1965d7b000e4dc244c1b27e2fe9a323ff077f52c4675e86247aa801187137e30c9bbf01c567a4299db4bf0b25b7d7107a7b81ee102f72ff47950164e26752e114c42f8b9d2a42e7308897ec640ea1924ed13abbe9d120912b62f4926493a86db94c0b46f44c6161d58c2f648164890c512dfb28d42c855bf470dbee2dab6960cad04e81f71525ded46cdd0f359f99c460db9f007d96ce83b4b218ac2d82c48f12608d469733f05a3375594669ccbf8a495544d6c5701e9369c08c810158"

    invoke-direct {v8, v9}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x1

    invoke-virtual {v5, v9, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v8, Landroid/content/pm/Signature;

    const-string v9, "308204d4308203bca003020102020900f3a752a8cbb7ac6a300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303732373132323632335a170d3338313231323132323632335a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100bd20d27f5127981cf0855e43e64d8018b92401ff0b4b241eeb54c4fb0e84dcf94cf8da888e34c1c370bc437f77880819f3a9894019f05d5514bc3d20d17e968167d85990fa1a44b9e79aa1da9681dc8d2c39b98b3b257918748c6f5bb9126330d72fdc26065e717f1a5c27c8b075f1a8d7325f7eb2d57ee34d93d76a5c529d2e0789392793c68c8f5090c4d2d093190b3279943550e2f5c864118e84d6c6c6bc67815148db8752e4bf69a9ca729ca4704d966e8dd591506dfc9dd9c8c33bdc7bf58660df6be3b45753983a092c3a4ae899d1f2253017ba606a5b1dda2f5511fcf530ea43c7dc05ff1621d305f12a37148e72078aaf644dadc98f3b6789cb6655020103a382010b30820107301d0603551d0e041604142fa3167aab7de1f13b4edef062fa715c0609f0bf3081d70603551d230481cf3081cc80142fa3167aab7de1f13b4edef062fa715c0609f0bfa181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900f3a752a8cbb7ac6a300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100498ed96cbc503fb1b72402dcb8ba364d8aa11dc5b9a7e191d200af4051272519b3099eba16e538044f086a1e36710abf2980efb437b6a9bebfab93417c068ea18cbfdeb8570fca73951684c674eb33c4240e236928ba1197d6b385c40454c3980f6f764131149dbba80756b7b18c5951a8630a6692fdb30227b431175f793a6e39479e8ad8b4b4beca6faabf9fc243b9be47447229524487f5f04cf6661ec818a3756221360bfeee3ccaec9a6dc67694b791a80957b28f11f15fd81eaeb361e4c9f907d3ceb4176f9947b513f8cd89d77044adae7c7f631f27a2e40a8d655a9c73515c796b17a39d0e9de675d62bf785c1e0d65a937c65aadacf788b2dfc14e2"

    invoke-direct {v8, v9}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x2

    invoke-virtual {v5, v9, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v8, Landroid/content/pm/Signature;

    const-string v9, "308204d4308203bca003020102020900b830e7f5ede090a8300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303632323132323531325a170d3338313130373132323531325a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d003082010802820101009a280ff8cebd5954fbac141d450be91a980a6597b379cb64a19bc4ab39aecb5f06fe2599d3767bb0c27e3e8ac3846cf0b80c09817f8d22be8a55418a068c6983958ffc233a99cd793bc468b0bda139b87ff1550e5ce184647214a1fa4fe2121a0ecdbb1cd33c644c06e7b70455ff097a4f8c51eca2ebefb4602b5d8bb6ed811ec959c1e99e8f353667703563c3c3277bbbd872fe7fa84bd8041efa98d32bb35c44d9c55aa8e766da065176722103fdb63677392c94bd20f5a5ac5c780046bc729a2eec3575a05ddb39836235c8c939f95493aa8f32dd7e7016392716219f0c5fe48874f283af0c217b4c08536b5df7bc302c9e2af08db61ecb49a198c7c4bd2b020103a382010b30820107301d0603551d0e041604144d2270829d5cf4a65bf55a756224bea659c2dfda3081d70603551d230481cf3081cc80144d2270829d5cf4a65bf55a756224bea659c2dfdaa181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900b830e7f5ede090a8300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100751ea54edeb751de01436db8009352bee64209020fe40641ac09d0016c807fd89258aca374299520e30bc79e77a161c98ddb8ccfc9c8184969114e4478d1b1b374a97e52e07e056dd6b6de5b063c12203e55e284d1de58af2fc6e43c198857b87ac9a472633b8a1cd7e6ebc4e2d675b680d1844d86ab7569129d24e2bcf10cddb2e66c85c1335a3d6479749152058a27135440b795bf509d78009fbda18a6c0cb31b741f79a4ac189d44fd04f65887bb9d950cc2b6f43275e71900fba03b06a9ab9ecd58af0f8c2e0b3569197b043da0601563b0af26a0f52c4b7e834c7ccf5dec4d330d8fd0a049360cd3d9ef0bff09b9812c9ba406c8a6650688b0919a040b"

    invoke-direct {v8, v9}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x4

    invoke-virtual {v5, v9, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v8, Landroid/content/pm/Signature;

    const-string v9, "308203663082024ea00302010202045334d369300d06092a864886f70d01010505003074310b3009060355040613024b52311430120603550408130b4779656f6e6767692d446f310e300c060355040713055375776f6e311c301a060355040a131353616d73756e6720456c656374726f6e696373310c300a060355040b13034d5343311330110603550403130a4d75736963526164696f3020170d3134303332383031343230315a180f32303634303331393031343230315a3074310b3009060355040613024b52311430120603550408130b4779656f6e6767692d446f310e300c060355040713055375776f6e311c301a060355040a131353616d73756e6720456c656374726f6e696373310c300a060355040b13034d5343311330110603550403130a4d75736963526164696f30820122300d06092a864886f70d01010105000382010f003082010a028201010083819270421a4a140b6ea27f213a10362b93b58fbc969e35f96941d40570191d767ff2b91927887a5d6829d30177747caa2cc57c7754fb3c59265cae7a5e2419e29c5c0e1925c6019f3cbb38195eee37c7ae8e0fc15d1b1bcac875d821dcd92a7417831c3d14daf1c514ef68d03ff2e50b28a4dab757451d79b84fc7d59fc5024939bd376569bbf53a6bae31faf8c2f7f657d31d30748875fe3329776c95a4da0f8c33fa4d5f9557e8d80bf2113d3f9fadca5d76545887cf59468dabd6cf64785306cf7f301d5cb40238ef97c2b868a7ba94cda3c6f3a30ca8c3b772061628016738d9d5d842ea9d11b00c20ef32ffb8b78e32141b2697389f21bdf1423b79750203010001300d06092a864886f70d0101050500038201010031ab11fb167b839e6f2b02b6e8d5eae010d3fbb20b310817fe350c75d3d2eede4cb53cb781f9a116e64aceeff9b40bd080a83a88286b2d0372e052a75ee2900d655d541ac682bdf18798e88ebb5873947f8c53b8a9d73ab2c536182daa8dafe05f70f87ed0058a8e4d065abe77cb2534083d785ae9577a6d1ca7342c9db0de4d4520d11633f519cbb993a009bc4e1e1973835b61807b48469bacd74b5e849e03aeeb69e2ca6c9cdda29c67196dad838ef8121024dccd3055e53e0f88948ed8291999aef53f401a4b127bccc9d32aa00ffd2169a36b1909c5efcfce2ea77871d510e8e8e6617c5bc84b666ff0340f0ac7e2bbd3609749b54aa8573ec5564441b3"

    invoke-direct {v8, v9}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    const/16 v9, 0x8

    invoke-virtual {v5, v9, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v8, Landroid/content/pm/Signature;

    const-string v10, "3082024f308201b8a00302010202045191d845300d06092a864886f70d0101050500306c3110300e06035504061307556e6b6e6f776e3110300e06035504081307556e6b6e6f776e3110300e06035504071307556e6b6e6f776e3110300e060355040a1307556e6b6e6f776e3110300e060355040b1307556e6b6e6f776e3110300e06035504031307556e6b6e6f776e301e170d3133303531343036323330315a170d3430303932393036323330315a306c3110300e06035504061307556e6b6e6f776e3110300e06035504081307556e6b6e6f776e3110300e06035504071307556e6b6e6f776e3110300e060355040a1307556e6b6e6f776e3110300e060355040b1307556e6b6e6f776e3110300e06035504031307556e6b6e6f776e30819f300d06092a864886f70d010101050003818d0030818902818100976f29ee7e3a7058d2ace552eebb8839de8e7182f298252ab6996b8fa55fe4f5bfb06fccb6e9460751a213e2bf0112e5b9d71e8db779ec871bc102c464aecc31c539f30d247d56721d0e349d0139fc8b792d35ef2557dcbc45848669934910edf3d3e27ab86ebf84b35003518237d7a1c45f79f51f2c870b367d7d9f063b26e70203010001300d06092a864886f70d0101050500038181006558e803b137ef689516c93a43c2d8c73704633d8380b3377641f9cabf6bcdd11dc7eadd9849aa8a0707e6e37d69a8e757d06d6128cda29e93f08e20b39b55df11d758815e7c67e9a9d382d14c747d5a08a5c9fcc59a850166cff85197c28106f5afd3e9bd9fdaf16d4a9df9daf32ea32b349807d70ae87b0d6a4c945a7cbbec"

    invoke-direct {v8, v10}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    const/16 v10, 0x10

    invoke-virtual {v5, v10, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v8, Landroid/content/pm/Signature;

    const-string v11, "30820271308201daa00302010202044bced400300d06092a864886f70d0101050500307d310b3009060355040613024b52310e300c0603550408130553656f756c310a3008060355040713012e310c300a060355040a13035344533121301f060355040b1318416e64726f696420446576656c6f706d656e74205465616d3121301f06035504031318416e64726f696420446576656c6f706d656e74205465616d301e170d3130303432313130333132385a170d3337303930363130333132385a307d310b3009060355040613024b52310e300c0603550408130553656f756c310a3008060355040713012e310c300a060355040a13035344533121301f060355040b1318416e64726f696420446576656c6f706d656e74205465616d3121301f06035504031318416e64726f696420446576656c6f706d656e74205465616d30819f300d06092a864886f70d010101050003818d0030818902818100aeed32b2126b38fe1f2ff9d7597e7a80179df0086feea0a1ff021c793f562689facea794dd46aa5c449d47002d44b8aae164eed3705a02409c506b2bcc542af80616df485641354ec3d6f48f5252432ae2e63778f8d6c18e5340a5e00652b02687c744706ff528c6f40138879491f7471c5a3030fd9ddf587bbdc698e17b9c670203010001300d06092a864886f70d0101050500038181000d924d99bafa03701e9ecb5ca787345ae025b0400b09493b655250699a11941a60572d5b9d5037d278f64395ca64df6700bb973dff1250a5ffc180f39d64103ecff7ed042c244ca8ce9fc224b8e027072a7ef78cb753bb962633b04bf3c238995c477172c13258f35b75fa968206c4efd9d99680679bd72b12b2fed5aff7f96a"

    invoke-direct {v8, v11}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    const/16 v12, 0x20

    invoke-virtual {v5, v12, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v8, Landroid/content/pm/Signature;

    const-string v13, "30820255308201bea00302010202044e07bddb300d06092a864886f70d0101050500306e310b3009060355040613024b523111300f060355040813084779656f6e676769310e300c060355040713055375776f6e310c300a060355040a13034d53433110300e060355040b130753616d73756e67311c301a060355040313137777772e73616d73756e672e636f6d2f7365633020170d3131303632363233313634335a180f32313131303630323233313634335a306e310b3009060355040613024b523111300f060355040813084779656f6e676769310e300c060355040713055375776f6e310c300a060355040a13034d53433110300e060355040b130753616d73756e67311c301a060355040313137777772e73616d73756e672e636f6d2f73656330819f300d06092a864886f70d010101050003818d0030818902818100a2ac304d1b9f26794cc006ae65ce472b0979a814dc39c56bb5b72fdaacdce7708b9c2ecac6c62bc1333fc492c11bda141ad91ef27f4c267674a8c3b422c04d9453f46cbb4eb805cd8d84db7cbef792cfd432c4a752713d9b7c4579871cad65c92dd84eca72b17fb40a230a7b97816b1926ac58a669babef62eed5c0f7b1f20650203010001300d06092a864886f70d01010505000381810083f3f453b3b2bd4004e1b1a1e50363b16c6b86a070bfb07506c00485f9c23571f4f4d3a10482eb2f184f2d6c3361bb4f4329537834fe7d4715b46eed6fe09618c55a3e4b1b93c2f316a11ab3e101c6752f205a6befec80e83dda7bb11bc8755d4f3e372a6321f345a02b475d7fb12e7bf35864b46e8a248b445d2e135c966a95"

    invoke-direct {v8, v13}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    const/16 v13, 0x40

    invoke-virtual {v5, v13, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v8, Landroid/content/pm/Signature;

    const-string v14, "308202bb308201a3a00302010202045a83f44a300d06092a864886f70d01010b0500300d310b3009060355040613026b723020170d3133303732303130353931305a180f32313132303632363130353931305a300d310b3009060355040613026b7230820122300d06092a864886f70d01010105000382010f003082010a0282010100c0958b7dbd2510276170b6a2cdb729ed2035b270e295e0c5ba32078cf79f924569ebf5a15bafc6583fdb20d83d87dbfc5be052b2cc9941ff6adac7ccd7feb0ede5ba6608cae3173e904a9218098fe8478c7f184765f833632a84f60923ae82d60aa96b61955847cb1899c615a0fbd185f7cf6324073bf227de6a0caf33321e5db1a7f3612b451c4e46687c34efe87e5d1ef4523b8aa1f0343a12cef42c64a858656c618189d3be2cdd7301dcd07a3cd381096312ac1cc3c32fbabe2259ee79cbe86e01443296554776b5fcde330db76e53efc4612423318f67d2ec1a18352e1382b7a38893fcc3ea32f36d020c756557862df84db1c4db8b7521ef30ddf94ef50203010001a321301f301d0603551d0e041604148e86c5f4c76f088e4ca46688621100a80acf007f300d06092a864886f70d01010b0500038201010028cf439b36a69a3858c22189d16253acca61389705c3ce2355f30f875fe951b34a7ea3a6c5fa60023588ff61e92591942701e7e7f65642676bea889ea98cb9462f62ad6d2c22e2e6f4e5ac617d3d65c26e439da6a62906388640287ce25d4494ff2cadef5b1159150af56d03a90c32bfd2f24fbe1d9a1566213257530feef09ee544e8f752e1f3e75a2381314fcb9d910d58e45facd8603274c1fd879e4b9144b96ba31387c5d9f7f4866299ee89b4bd4f1482090abad4dd4abeba1e780b98682065f619a86a28c3111a631c8a43d028eaaf3cae573ff6a6caf2a85ee87e1c7e14e2e1b3f0239b2fa5e0d664e0c1a1a9ef57898dea32833101adab6c35639895"

    invoke-direct {v8, v14}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    const/16 v14, 0x80

    invoke-virtual {v5, v14, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v8, Landroid/content/pm/Signature;

    const-string v15, "308201cf30820138a00302010202044e2cb661300d06092a864886f70d0101050500302b310b3009060355040613026b6f310e300c060355040713057375776f6e310c300a060355040313037670733020170d3131303732353030313834315a180f32313131303730313030313834315a302b310b3009060355040613026b6f310e300c060355040713057375776f6e310c300a0603550403130376707330819f300d06092a864886f70d010101050003818d0030818902818100a8ec9f407459acdefd6d4b473a9c4d01b2ccd59cb7983650b3b4426763e31280e1f93d53d73c4cfda81153171dbfe75214c4e44455027325f13e9571d64a9af164bcc79945a4e176aaf6394c50c55b8c9e44bd885b9d5b7ef743e43bcb8d7c405ffbbb664b6b3e25c0deb1b215badcbea137f3e1ae21d65cb8d6392d6e6b52ed0203010001300d06092a864886f70d010105050003818100306be5d67c62bcb63dd5d615e9f67f8bf017c92fb49b6ee1e04eb87926d833d6abb9363aaabdb41215fc1b93bdff34344af43381b3f73c85d2e9a80d84382181b06a127c2a74522c2d3e5f9ed09407e9944e27db4742b3e93c62f5d673f3554f5597766bb4ee17ffd8b0a1073dad7b9e67ab003e985306481dee7898d6a28fac"

    invoke-direct {v8, v15}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    const/16 v15, 0x100

    invoke-virtual {v5, v15, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v8, Landroid/content/pm/Signature;

    move/from16 v16, v9

    const-string v9, "308204d4308203bca003020102020900e5eff0a8f66d92b3300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303632323132323531335a170d3338313130373132323531335a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100e9f1edb42423201dce62e68f2159ed8ea766b43a43d348754841b72e9678ce6b03d06d31532d88f2ef2d5ba39a028de0857983cd321f5b7786c2d3699df4c0b40c8d856f147c5dc54b9d1d671d1a51b5c5364da36fc5b0fe825afb513ec7a2db862c48a6046c43c3b71a1e275155f6c30aed2a68326ac327f60160d427cf55b617230907a84edbff21cc256c628a16f15d55d49138cdf2606504e1591196ed0bdc25b7cc4f67b33fb29ec4dbb13dbe6f3467a0871a49e620067755e6f095c3bd84f8b7d1e66a8c6d1e5150f7fa9d95475dc7061a321aaf9c686b09be23ccc59b35011c6823ffd5874d8fa2a1e5d276ee5aa381187e26112c7d5562703b36210b020103a382010b30820107301d0603551d0e041604145b115b23db35655f9f77f78756961006eebe3a9e3081d70603551d230481cf3081cc80145b115b23db35655f9f77f78756961006eebe3a9ea181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900e5eff0a8f66d92b3300c0603551d13040530030101ff300d06092a864886f70d0101050500038201010039c91877eb09c2c84445443673c77a1219c5c02e6552fa2fbad0d736bc5ab6ebaf0375e520fe9799403ecb71659b23afda1475a34ef4b2e1ffcba8d7ff385c21cb6482540bce3837e6234fd4f7dd576d7fcfe9cfa925509f772c494e1569fe44e6fcd4122e483c2caa2c639566dbcfe85ed7818d5431e73154ad453289fb56b607643919cf534fbeefbdc2009c7fcb5f9b1fa97490462363fa4bedc5e0b9d157e448e6d0e7cfa31f1a2faa9378d03c8d1163d3803bc69bf24ec77ce7d559abcaf8d345494abf0e3276f0ebd2aa08e4f4f6f5aaea4bc523d8cc8e2c9200ba551dd3d4e15d5921303ca9333f42f992ddb70c2958e776c12d7e3b7bd74222eb5c7a"

    invoke-direct {v8, v9}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    const/16 v9, 0x200

    invoke-virtual {v5, v9, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v8, Landroid/content/pm/Signature;

    move/from16 v17, v9

    const-string v9, "308201cf30820138a00302010202044e0bbe87300d06092a864886f70d0101050500302c310c300a060355040b1303534543311c301a0603550403131353616d73756e67204d6f62696c6520566f4950301e170d3131303633303030303833395a170d3431303632323030303833395a302c310c300a060355040b1303534543311c301a0603550403131353616d73756e67204d6f62696c6520566f495030819f300d06092a864886f70d010101050003818d0030818902818100c868e260bdeba63fde4630a72a7a7f4a7c9663ba6b28c182530fc807d3e7d0a9f1a9d5f83e05a4092ab8ae4b9b469f4fb7f9ea1c2dc0eeba09aae2c93bdd94f4665d3644639622bba583df2b44ad54d69ce5c7398338ad517cc3e6c3a8849a567131925475dd3db485b820920a2e2c690e780cfee2370eba462299c2a9e6d5990203010001300d06092a864886f70d010105050003818100b7972a1043f0ca6e7f6a62a48f785aaa56ca6b4533c11b4fdf0211855cc54174b088a287c399c2384bdfa95db476626f2d201e7a756c6d8e3cc98690a89379058c1c389096500a3a0945fce341d5188f70c2ef0e14f1aa7dfbeee888d8e30c2cdbc8870005490dbae4459170df512b4ee55f61f4e5299359b1bc54a0cb077387"

    invoke-direct {v8, v9}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    const/16 v9, 0x400

    invoke-virtual {v5, v9, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v8, Landroid/content/pm/Signature;

    const-string v9, "308201e53082014ea00302010202044c297bf2300d06092a864886f70d01010505003037310b30090603550406130255533110300e060355040a1307416e64726f6964311630140603550403130d416e64726f6964204465627567301e170d3130303632393034353230325a170d3131303632393034353230325a3037310b30090603550406130255533110300e060355040a1307416e64726f6964311630140603550403130d416e64726f696420446562756730819f300d06092a864886f70d010101050003818d0030818902818100daa631a08a8f795410f717537bd9da66082ffc0a80c573683f38ca6e88b23df1789f85cc0665592ea84c669ba55ca6e327555882d24639da94e9a3168f8a6959d1bf937b8d471788917aa069fab9a5152cb9ab4ba6750abbc1b13b3a225a65c021dd8bf2cf2fd3cc1a097a3c227fcb6373899bb7267b05d42a05fcdcb5e6e24b0203010001300d06092a864886f70d010105050003818100749f8d27bad3d4837a029ae828bae9ff1deea50d04a4f5067da5bbe492a25c16eea7ee84a713bc81c853c77018ea10912a5d8d1b439f78563302c9b815cabd1f29bd9cceb0fdb64ac4b74c338200641597ee0abad0fc3183a4c69378a39ab070c4ae050d643268980e1ae3639e28a006d7290437af90741e87e363e31e9fccbd"

    invoke-direct {v8, v9}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    const/16 v9, 0x800

    invoke-virtual {v5, v9, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v8, Landroid/content/pm/Signature;

    invoke-direct {v8, v11}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    const/16 v9, 0x1000

    invoke-virtual {v5, v9, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v8, Landroid/content/pm/Signature;

    const-string v11, "3082030b308201f3a003020102020427ba3599300d06092a864886f70d01010b050030363120301e060355040b131750726f64756374506c616e6e696e674469766973696f6e3112301006035504031309534b54656c65636f6d301e170d3133303432353034313334345a170d3433303431383034313334345a30363120301e060355040b131750726f64756374506c616e6e696e674469766973696f6e3112301006035504031309534b54656c65636f6d30820122300d06092a864886f70d01010105000382010f003082010a0282010100bc1ee71062800dc6ea0aad37ac18de0f5c827a90f64c8ec8c61718e58a675d80e81016872f1f1da06e0f05f8423e0037727adefbd043993244822539158d47b521b5d883a151523ee2f4a2fdd19ac364f29a93c1e05159a8b90902968237edf5931e20ca4d80a76bd5f699430d9dfd57387b49063860fe567780bd7e7b6206fef3e030cd1ec39c324cf8914b1c3b1cf1142f16a18bcf401c87ec1253fb1161cc5b97677973c730e574c54ade32ace9693d36be430fc1191ab42938a54d0b36b11e474a2b859682d21aa78ee1e3d023e738ac704edcdc710e16b267985e65f3647c4b040110fa2c03f91ad4055b2a740dcfc1cab708492b9575902a0f97b807f50203010001a321301f301d0603551d0e0416041402ff5ede4a1a2017d26f1d3e6079083f8ab63dc6300d06092a864886f70d01010b050003820101007f10b1b880d054df5bcaab1204071ee9cc554601b431a886e318a5a600a73c4a0300e4c27d09ddea81d2c9f858baf83dc517b68e760dda559fb2500fbd64c308fc367bc038e39d53794612023b08f759dcf13b7d74002e680a1f661bed3f0aa138325345318ee80566bbe4263d42317fd2ff0746ab78d160dc2af871297f2110fc6db4b270a6b0e45b85de411cb02b881721c655127f1e7678af0c96d7621a1822d9931afe5f1e6bfae05f88a800c0783e2c4bd98b81e9de14f54ff9561a9f1b13fb00c44ca10d62b8a22a601e536440b7090355212594f2cb48fbe8e136c46c9169784e9faf42a417bdd3603cb652f6c6e49d6c7b836d310cdbc14f111e254c"

    invoke-direct {v8, v11}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x2000

    invoke-virtual {v5, v11, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v8, "Y29tLnNhbXN1bmcucmFkaW8="

    invoke-virtual {v6, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v10, "Y29tLnVwbHVzLmlwYWdlbnQ="

    invoke-virtual {v6, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v10, "Y29tLnNkcy5tb2JpbGVkZXNr"

    invoke-virtual {v6, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v10, "Y29tLnNlYy5jaGF0b25ibHVl"

    invoke-virtual {v6, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v10, "Y29tLmt0Y3Mud2hvd2hv"

    invoke-virtual {v6, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v10, "Y29tLndob3gyLmxndXBsdXM="

    invoke-virtual {v6, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v10, "Y29tLnNlYy5zYW1zdW5nc291bmRwaG9uZQ=="

    invoke-virtual {v6, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v10, "Y29tLnNlYy5hbmRyb2lkLmFwcC5zaGVhbHRo"

    invoke-virtual {v6, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v10, "Y29tLnNlYy5hbmRyb2lkLmFwcC5zaGVhbHRoOnJlbW90ZQ=="

    invoke-virtual {v6, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0xc00

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v10, "Y29tLmFtYy51aQ=="

    invoke-virtual {v6, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v9, "Y29tLnNkcy5tbXMudWk="

    invoke-virtual {v6, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v9, "Y29tLnNrdC5wcm9kLmRpYWxlcg=="

    invoke-virtual {v6, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v2, v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerAllowLists:Lcom/android/server/sepunion/cover/CoverManagerAllowLists;

    new-instance v2, Lcom/android/server/sepunion/cover/AutoScreenOn;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v2, v5, v1}, Lcom/android/server/sepunion/cover/AutoScreenOn;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v2, v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mAutoScreenOn:Lcom/android/server/sepunion/cover/AutoScreenOn;

    new-instance v2, Lcom/android/server/sepunion/cover/ResolutionMonitor;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v2, v1, v5, v3}, Lcom/android/server/sepunion/cover/ResolutionMonitor;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/Runnable;)V

    new-instance v2, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v2, v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSleepTokenAcquirer:Lcom/android/server/sepunion/cover/SleepTokenAcquirer;

    new-instance v2, Lcom/android/server/sepunion/cover/CoverTestModeUtils;

    new-instance v3, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$5;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-direct {v2, v1, v3}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;-><init>(Landroid/content/Context;Lcom/android/server/sepunion/cover/CoverTestModeUtils$OnCoverTestModeChanged;)V

    iput-object v2, v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverTestModeUtils:Lcom/android/server/sepunion/cover/CoverTestModeUtils;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v2, "com.sec.feature.cover.hallic"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSupportHallIcSensor:Z

    return-void
.end method


# virtual methods
.method public final cloneCoverStateLocked()Lcom/samsung/android/cover/CoverState;
    .registers 2

    new-instance v0, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0, p0}, Lcom/samsung/android/cover/CoverState;->copyFrom(Lcom/samsung/android/cover/CoverState;)V

    return-object v0
.end method

.method public final disableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z
    .registers 13

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_26

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerAllowLists:Lcom/android/server/sepunion/cover/CoverManagerAllowLists;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_26

    const-string p0, "CoverManager_CoverManagerServiceImpl"

    const-string/jumbo p1, "disableLcdOffByCover : caller is invalid"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_26
    const-string v0, "CoverManager_"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "disable LCD OFF : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "CoverManager_StateNotifier"

    const-string/jumbo v1, "disableLcdOffByCover"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v4, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_4a
    iget-object v0, v4, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v5, v2

    :cond_51
    const/4 v9, 0x1

    if-ge v5, v3, :cond_73

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;

    if-eqz v6, :cond_51

    iget-object v6, v6, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;->token:Landroid/os/IBinder;

    invoke-interface {p1, v6}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_51

    const-string p1, "CoverManager_StateNotifier"

    const-string/jumbo p2, "disableLcdOffByCover : LCD off already called by app"

    invoke-static {p1, p2}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    goto :goto_8e

    :catchall_70
    move-exception v0

    move-object p0, v0

    goto :goto_b8

    :cond_73
    new-instance v3, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;-><init>(Lcom/android/server/sepunion/cover/StateNotifier;Landroid/os/IBinder;Landroid/content/ComponentName;II)V

    invoke-interface {v5, v3, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object p1, v4, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v9, v4, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisabledByApp:Z

    monitor-exit v1
    :try_end_8d
    .catchall {:try_start_4a .. :try_end_8d} :catchall_70

    move v2, v9

    :goto_8e
    if-eqz v2, :cond_b7

    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    if-eqz p1, :cond_ac

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "event_type"

    invoke-virtual {p2, v0, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "lcd_off_disabled_by_cover"

    invoke-virtual {p2, v0, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p1, p2}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->sendSystemEvent(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    iput-object p0, p1, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisabledByAppListener:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    :cond_ac
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    if-eqz p1, :cond_b7

    invoke-virtual {p1, v9}, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->setLcdOffDisabledByCover(Z)V

    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    iput-object p0, p1, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisabledByAppListener:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    :cond_b7
    return v2

    :goto_b8
    :try_start_b8
    monitor-exit v1
    :try_end_b9
    .catchall {:try_start_b8 .. :try_end_b9} :catchall_70

    throw p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 15

    const/4 v0, 0x1

    const-string v1, "  "

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v3, "CoverManager_CoverManagerServiceImpl"

    invoke-static {v2, v3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v2

    if-nez v2, :cond_f

    goto/16 :goto_300

    :cond_f
    sget-object v2, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestVisibleRect:Landroid/graphics/Rect;

    const-string v2, "COVER MANAGER SERVICE (dumpsys cover)"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, " Current Cover state"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverVerifier:Lcom/android/server/sepunion/cover/CoverVerifier;

    invoke-virtual {v1, p2}, Lcom/android/server/sepunion/cover/CoverVerifier;->dump(Ljava/io/PrintWriter;)V

    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_1e .. :try_end_3a} :catchall_305

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, " Current Feature state:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  sIsDeviceSupportVerifyCover="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsDeviceSupportVerifyCover:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, "  sIsDeviceSupportDetectCover="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsDeviceSupportDetectCover:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    const-string v1, "  sIsSupportFlipCover="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportFlipCover:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, "  sIsSupportNfcLedCover="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportNfcLedCover:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, "  sIsSupportClearCover="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportClearCover:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, "  sIsNfcAuthSystemFeatureEnabled="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsNfcAuthSystemFeatureEnabled:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, "  sIsSupportNeonCover="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportNeonCover:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    const-string v1, "  sSupportNfcLedCoverLevel="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v1, Lcom/android/server/sepunion/cover/Feature;->sSupportNfcLedCoverLevel:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    const-string v1, "  sIsSupportGamePackCover="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportGamePackCover:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    const-string v1, "  sIsSupportLEDBackCover="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportLEDBackCover:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    const-string v1, "  sIsSupportSecureCover="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportSecureCover:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    const-string v1, "  sIsSupportClearSideViewCover="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportClearSideViewCover:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    const-string v1, "  sIsSupportMiniSviewWalletCover="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportMiniSviewWalletCover:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    const-string v1, "  sIsSupportClearCameraViewCover="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportClearCameraViewCover:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    const-string v1, "  "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/sepunion/cover/CoverServiceManager;

    iget-object v3, v1, Lcom/android/server/sepunion/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_de
    const-string v2, " Active Cover Service: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/sepunion/cover/CoverServiceManager;->mActiveServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_eb
    if-ge v6, v4, :cond_10c

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/2addr v6, v0

    check-cast v7, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_eb

    :catchall_109
    move-exception p0

    goto/16 :goto_303

    :cond_10c
    const-string v2, " "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, " Binding Cover Service: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v2, v1, Lcom/android/server/sepunion/cover/CoverServiceManager;->mBindingTimestamp:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_124
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_163

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sub-long v9, v6, v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms ago"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_124

    :cond_163
    const-string v2, " "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, " Bind history:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/server/sepunion/cover/CoverServiceManager;->mBindHistory:[Ljava/lang/String;

    array-length v2, v1

    move v4, v5

    :goto_171
    if-ge v4, v2, :cond_18d

    aget-object v6, v1, v4

    if-eqz v6, :cond_18b

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_18b
    add-int/2addr v4, v0

    goto :goto_171

    :cond_18d
    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v3
    :try_end_193
    .catchall {:try_start_de .. :try_end_193} :catchall_109

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    invoke-virtual {v1, p2}, Lcom/android/server/sepunion/cover/StateNotifier;->dump(Ljava/io/PrintWriter;)V

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/sepunion/cover/CoverDisabler;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "  mDisableRecords.size="

    const-string v3, "  Real Cover Switch State="

    const-string v4, "  mCoverManagerDisabled="

    const-string v6, " Current CoverDisabler state:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/android/server/sepunion/cover/CoverDisabler;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_1ab
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/server/sepunion/cover/CoverDisabler;->mCoverManagerDisabled:Z

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/server/sepunion/cover/CoverDisabler;->mCoverManagerDisabled:Z

    if-eqz v4, :cond_1d5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, v1, Lcom/android/server/sepunion/cover/CoverDisabler;->mRealCoverSwitchState:Z

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1d5

    :catchall_1d2
    move-exception p0

    goto/16 :goto_301

    :cond_1d5
    :goto_1d5
    iget-object v3, v1, Lcom/android/server/sepunion/cover/CoverDisabler;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v5

    :goto_1eb
    if-ge v2, v3, :cond_22a

    iget-object v4, v1, Lcom/android/server/sepunion/cover/CoverDisabler;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/sepunion/cover/CoverDisabler$DisableRecord;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "] disable="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v4, Lcom/android/server/sepunion/cover/CoverDisabler$DisableRecord;->disable:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " pkg="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lcom/android/server/sepunion/cover/CoverDisabler$DisableRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " token="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/android/server/sepunion/cover/CoverDisabler$DisableRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/2addr v2, v0

    goto :goto_1eb

    :cond_22a
    const-string v1, "  "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v6
    :try_end_230
    .catchall {:try_start_1ab .. :try_end_230} :catchall_1d2

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    if-eqz v1, :cond_237

    invoke-virtual {v1, p2}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->dump(Ljava/io/PrintWriter;)V

    :cond_237
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    if-eqz v1, :cond_2b5

    const-string v2, "  Live callbacks ("

    const-string v3, " Current Generic Cover Callback state:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_245
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "):"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_265
    :goto_265
    if-ge v5, v2, :cond_2ac

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/2addr v5, v0

    check-cast v4, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;

    if-eqz v4, :cond_265

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " (pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->pid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v4, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->type:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_265

    :catchall_2aa
    move-exception p0

    goto :goto_2b3

    :cond_2ac
    const-string v1, "  "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v3

    goto :goto_2b5

    :goto_2b3
    monitor-exit v3
    :try_end_2b4
    .catchall {:try_start_245 .. :try_end_2b4} :catchall_2aa

    throw p0

    :cond_2b5
    :goto_2b5
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mAutoScreenOn:Lcom/android/server/sepunion/cover/AutoScreenOn;

    invoke-virtual {v1}, Lcom/android/server/sepunion/cover/AutoScreenOn;->support()Z

    move-result v1

    if-eqz v1, :cond_2c2

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mAutoScreenOn:Lcom/android/server/sepunion/cover/AutoScreenOn;

    invoke-virtual {v1, p2}, Lcom/android/server/sepunion/cover/AutoScreenOn;->dump(Ljava/io/PrintWriter;)V

    :cond_2c2
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverTestModeUtils:Lcom/android/server/sepunion/cover/CoverTestModeUtils;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, " Current CoverTestModeUtils state:"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  SHIPPED="

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string p0, "  sCurrentTestMode="

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestVisibleRect:Landroid/graphics/Rect;

    const/4 p0, -0x1

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(I)V

    const-string p0, "  sCurrentTestVisibleRect="

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p0, "  "

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "CoverManager_"

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/sepunion/Log;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    const-class p0, Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/accessory/manager/SAccessoryManager;

    if-eqz p0, :cond_300

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/accessory/manager/SAccessoryManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_300
    :goto_300
    return-void

    :goto_301
    :try_start_301
    monitor-exit v6
    :try_end_302
    .catchall {:try_start_301 .. :try_end_302} :catchall_1d2

    throw p0

    :goto_303
    :try_start_303
    monitor-exit v3
    :try_end_304
    .catchall {:try_start_303 .. :try_end_304} :catchall_109

    throw p0

    :catchall_305
    move-exception p0

    :try_start_306
    monitor-exit v2
    :try_end_307
    .catchall {:try_start_306 .. :try_end_307} :catchall_305

    throw p0
.end method

.method public final enableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z
    .registers 9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_26

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerAllowLists:Lcom/android/server/sepunion/cover/CoverManagerAllowLists;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_26

    const-string p0, "CoverManager_CoverManagerServiceImpl"

    const-string/jumbo p1, "enableLcdOffByCover : caller is invalid"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_26
    const-string v0, "CoverManager_"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "enable LCD OFF : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "CoverManager_StateNotifier"

    const-string/jumbo v0, "enableLcdOffByCover"

    invoke-static {p2, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    monitor-enter p2

    :try_start_4a
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :cond_51
    if-ge v3, v1, :cond_68

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;

    if-eqz v4, :cond_51

    iget-object v5, v4, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;->token:Landroid/os/IBinder;

    invoke-interface {p1, v5}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_51

    goto :goto_69

    :catchall_66
    move-exception p0

    goto :goto_83

    :cond_68
    const/4 v4, 0x0

    :goto_69
    if-nez v4, :cond_75

    const-string p0, "CoverManager_StateNotifier"

    const-string/jumbo p1, "enableLcdOffByCover: matching listener does not exist."

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p2

    return v2

    :cond_75
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-interface {p1, v4, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/StateNotifier;->enableLcdOffByCoverIfPossibleLocked()V

    const/4 p0, 0x1

    monitor-exit p2

    return p0

    :goto_83
    monitor-exit p2
    :try_end_84
    .catchall {:try_start_4a .. :try_end_84} :catchall_66

    throw p0
.end method

.method public final getCoverState()Lcom/samsung/android/cover/CoverState;
    .registers 5

    sget-object v0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestVisibleRect:Landroid/graphics/Rect;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_28

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerAllowLists:Lcom/android/server/sepunion/cover/CoverManagerAllowLists;

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_28

    const-string p0, "CoverManager_CoverManagerServiceImpl"

    const-string/jumbo v0, "getCoverStateInternal : caller is invalid"

    invoke-static {p0, v0}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_28
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    return-object p0
.end method

.method public final getCoverStateFromCoverServiceManager()Lcom/samsung/android/cover/CoverState;
    .registers 2

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->cloneCoverStateLocked()Lcom/samsung/android/cover/CoverState;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_9
    move-exception p0

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public final getCoverSwitchStateFromInputManager()I
    .registers 5

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    if-nez v0, :cond_13

    const-string/jumbo v0, "input"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/input/IInputManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/InputManagerService;

    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    :cond_13
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    const-string v0, "CoverManager_CoverManagerServiceImpl"

    const/4 v1, -0x1

    if-eqz p0, :cond_34

    :try_start_1a
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    const/16 v2, -0x100

    const/16 v3, 0x15

    invoke-interface {p0, v1, v2, v3}, Lcom/android/server/input/NativeInputManagerService;->getSwitchState(III)I

    move-result p0
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_24} :catch_2d

    if-lez p0, :cond_28

    const/4 p0, 0x1

    return p0

    :cond_28
    if-nez p0, :cond_2c

    const/4 p0, 0x0

    return p0

    :cond_2c
    return v1

    :catch_2d
    const-string/jumbo p0, "getCoverSwitchStateFromInputManager : Can\'t get cover switch state"

    invoke-static {v0, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_34
    const-string/jumbo p0, "getCoverSwitchStateFromInputManager : InputManager is null"

    invoke-static {v0, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final initializeLedCoverController()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Lcom/android/server/sepunion/cover/Feature;->sSupportNfcLedCoverLevel:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_68

    const/16 v1, 0x14

    if-eq v0, v1, :cond_58

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_48

    const/16 v1, 0x28

    if-eq v0, v1, :cond_48

    const/16 v1, 0x32

    if-eq v0, v1, :cond_48

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_48

    const/16 v1, 0x46

    if-eq v0, v1, :cond_48

    const/16 v1, 0x50

    if-eq v0, v1, :cond_48

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_48

    const/16 v1, 0x64

    if-eq v0, v1, :cond_48

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "initializeLedCoverController : unsupported NfcLedCover level "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CoverManager_CoverManagerServiceImpl"

    invoke-static {v0, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_48
    new-instance v0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    return-void

    :cond_58
    new-instance v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    return-void

    :cond_68
    new-instance v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/server/sepunion/cover/NfcLedCoverController;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    return-void
.end method

.method public final notifyCoverSwitchStateChanged(Z)V
    .registers 6

    const-string/jumbo v0, "notifyCoverSwitchStateChanged : switchState = "

    iget-boolean v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSystemReady:Z

    if-nez v1, :cond_10

    const-string p0, "CoverManager_CoverManagerServiceImpl"

    const-string/jumbo p1, "notifyCoverSwitchStateChanged : return because system is not yet ready"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    sget-object v1, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestVisibleRect:Landroid/graphics/Rect;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-ne v1, v2, :cond_11a

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/sepunion/cover/CoverDisabler;

    iget-boolean v2, v1, Lcom/android/server/sepunion/cover/CoverDisabler;->mCoverManagerDisabled:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_88

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverVerifier:Lcom/android/server/sepunion/cover/CoverVerifier;

    iget-boolean v0, v0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    if-eqz v0, :cond_2b

    if-eqz p1, :cond_2c

    :cond_2b
    const/4 v3, 0x1

    :cond_2c
    iput-boolean v3, v1, Lcom/android/server/sepunion/cover/CoverDisabler;->mRealCoverSwitchState:Z

    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    if-nez p1, :cond_33

    goto :goto_4f

    :cond_33
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.sepunion.cover.SEND_COVER_SWITCH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "switchState"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "CoverManager_CoverDisabler"

    const-string/jumbo v2, "sendCoverSwitchIntent"

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_4f
    const-string p1, "CoverManager_CoverManagerServiceImpl"

    const-string/jumbo v0, "isCoverManagerDisabled : switchState = "

    const-string v1, ", type = "

    invoke-static {v0, v1, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    if-eqz p1, :cond_78

    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result p0

    invoke-virtual {p1, v3, p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setCoverMode(ZI)V

    goto :goto_7f

    :cond_78
    const-string p0, "CoverManager_CoverManagerServiceImpl"

    const-string p1, "InputDeviceManager is null"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7f
    const-string p0, "CoverManager_"

    const-string/jumbo p1, "cover switch fail because CoverManager is disabled"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_88
    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v1

    if-eqz v1, :cond_97

    const-string p0, "CoverManager_"

    const-string/jumbo p1, "cover switch fail because factory app is running."

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_97
    :try_start_97
    const-string v1, "CoverManager_CoverManagerServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", type = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    if-eqz v0, :cond_c6

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setCoverMode(ZI)V

    goto :goto_d1

    :catch_c4
    move-exception v0

    goto :goto_ce

    :cond_c6
    const-string v0, "CoverManager_CoverManagerServiceImpl"

    const-string v1, "InputDeviceManager is null"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cd
    .catch Ljava/lang/NullPointerException; {:try_start_97 .. :try_end_cd} :catch_c4

    goto :goto_d1

    :goto_ce
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_d1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mAutoScreenOn:Lcom/android/server/sepunion/cover/AutoScreenOn;

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/AutoScreenOn;->support()Z

    move-result v0

    if-eqz v0, :cond_102

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mAutoScreenOn:Lcom/android/server/sepunion/cover/AutoScreenOn;

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/AutoScreenOn;->off()Z

    move-result v0

    if-eqz v0, :cond_102

    const-string v0, "CoverManager_"

    const-string v1, "AutoScreenOn is disabled."

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_eb
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    if-nez v1, :cond_fe

    const-string v1, "CoverManager_"

    const-string v2, "AutoScreenOn changed in cover closed state"

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    goto :goto_102

    :catchall_fc
    move-exception p0

    goto :goto_100

    :cond_fe
    monitor-exit v0

    return-void

    :goto_100
    monitor-exit v0
    :try_end_101
    .catchall {:try_start_eb .. :try_end_101} :catchall_fc

    throw p0

    :cond_102
    :goto_102
    const-string v0, "CoverManager_"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "cover switch : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v3}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->updateCoverSwitchState(ZZ)V

    return-void

    :cond_11a
    const-string p0, "CoverManager_CoverManagerServiceImpl"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "getCallingUid() = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", myUid() == "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller is not SYSTEM_PROCESS"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onSwitchUser(I)V
    .registers 5

    const-string v0, "CoverManager_CoverManagerServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onSwitchUser : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_52

    const-string v0, "CoverManager_CoverManagerServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "User "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is no longer unlocked - exiting"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_38
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    move-result p1

    if-eqz p1, :cond_4e

    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/sepunion/cover/CoverServiceManager;

    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/sepunion/cover/CoverServiceManager;->unbindActiveCoverService(I)V

    goto :goto_4e

    :catchall_4c
    move-exception p0

    goto :goto_50

    :cond_4e
    :goto_4e
    monitor-exit v0

    return-void

    :goto_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_38 .. :try_end_51} :catchall_4c

    throw p0

    :cond_52
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_55
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    move-result v1

    if-eqz v1, :cond_6b

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/sepunion/cover/CoverServiceManager;

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->switchCoverService(II)V

    goto :goto_6b

    :catchall_69
    move-exception p0

    goto :goto_7a

    :cond_6b
    :goto_6b
    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_55 .. :try_end_6c} :catchall_69

    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mAutoScreenOn:Lcom/android/server/sepunion/cover/AutoScreenOn;

    invoke-virtual {p1}, Lcom/android/server/sepunion/cover/AutoScreenOn;->support()Z

    move-result p1

    if-eqz p1, :cond_79

    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mAutoScreenOn:Lcom/android/server/sepunion/cover/AutoScreenOn;

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/AutoScreenOn;->update()V

    :cond_79
    return-void

    :goto_7a
    :try_start_7a
    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_69

    throw p0
.end method

.method public final onUserUnlocked(I)V
    .registers 5

    const-string v0, "CoverManager_CoverManagerServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onUserUnlocked : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_36

    const-string p0, "CoverManager_CoverManagerServiceImpl"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "User "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is no longer unlocked - exiting"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_36
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_39
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/sepunion/cover/CoverServiceManager;

    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->bindCoverService(IZ)V

    goto :goto_50

    :catchall_4e
    move-exception p0

    goto :goto_52

    :cond_50
    :goto_50
    monitor-exit p1

    return-void

    :goto_52
    monitor-exit p1
    :try_end_53
    .catchall {:try_start_39 .. :try_end_53} :catchall_4e

    throw p0
.end method

.method public final registerListenerCallbackInternal(ILandroid/os/IBinder;Landroid/content/ComponentName;)V
    .registers 8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_25

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerAllowLists:Lcom/android/server/sepunion/cover/CoverManagerAllowLists;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_25

    const-string p0, "CoverManager_CoverManagerServiceImpl"

    const-string/jumbo p1, "registerListenerCallbackInternal : caller is invalid"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_25
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    if-eqz p3, :cond_46

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "com.samsung.android.incallui"

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mHighPriorityListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3c
    iget-object v1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mHighPriorityListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p2, p3, p1, v1}, Lcom/android/server/sepunion/cover/StateNotifier;->addListenerToListLocked(Landroid/os/IBinder;Landroid/content/ComponentName;ILjava/util/List;)V

    monitor-exit v0

    return-void

    :catchall_43
    move-exception p0

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3c .. :try_end_45} :catchall_43

    throw p0

    :cond_46
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_49
    iget-object v1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p2, p3, p1, v1}, Lcom/android/server/sepunion/cover/StateNotifier;->addListenerToListLocked(Landroid/os/IBinder;Landroid/content/ComponentName;ILjava/util/List;)V

    monitor-exit v0

    return-void

    :catchall_50
    move-exception p0

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_49 .. :try_end_52} :catchall_50

    throw p0
.end method

.method public final registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V
    .registers 13

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_25

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerAllowLists:Lcom/android/server/sepunion/cover/CoverManagerAllowLists;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_25

    const-string p0, "CoverManager_CoverManagerServiceImpl"

    const-string/jumbo p1, "registerNfcTouchListenerCallback : caller is invalid"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_25
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    if-eqz v0, :cond_2c

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V

    :cond_2c
    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    if-eqz v2, :cond_c8

    const-string p0, "CoverManager_GenericCoverServiceController"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "registerNfcTouchListenerCallback: binder = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0xa

    if-eq p1, p0, :cond_80

    const/4 p0, 0x4

    if-eq p1, p0, :cond_80

    const-string p0, "CoverManager_GenericCoverServiceController"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "Unsupported touch listener type: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_80
    iget-object p0, v2, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    monitor-enter p0

    :try_start_83
    iget-object v0, v2, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v8, 0x0

    move v3, v8

    :cond_8b
    if-ge v3, v1, :cond_ac

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;

    if-eqz v4, :cond_8b

    iget-object v4, v4, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->token:Landroid/os/IBinder;

    invoke-interface {p2, v4}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8b

    const-string p1, "CoverManager_GenericCoverServiceController"

    const-string/jumbo p2, "registerNfcTouchListenerCallback : duplicated listener handle"

    invoke-static {p1, p2}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :catchall_a9
    move-exception v0

    move-object p1, v0

    goto :goto_c6

    :cond_ac
    new-instance v1, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    move v7, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;-><init>(Lcom/android/server/sepunion/cover/GenericCoverServiceController;Landroid/os/IBinder;Landroid/content/ComponentName;III)V

    invoke-interface {v3, v1, v8}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object p1, v2, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :goto_c6
    monitor-exit p0
    :try_end_c7
    .catchall {:try_start_83 .. :try_end_c7} :catchall_a9

    throw p1

    :cond_c8
    return-void
.end method

.method public final requestCoverAuthentication(Landroid/os/IBinder;Landroid/content/ComponentName;)Z
    .registers 9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "CoverManager_CoverManagerServiceImpl"

    if-eq v0, v1, :cond_26

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerAllowLists:Lcom/android/server/sepunion/cover/CoverManagerAllowLists;

    invoke-virtual {v5, v0, v1, v4}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_26

    const-string/jumbo p0, "requestCoverAuthentication : caller is invalid"

    invoke-static {v3, p0}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_26
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "requestCoverAuthentication : whenNanos="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    if-eqz p0, :cond_48

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->requestCoverAuthentication(JLandroid/os/IBinder;Landroid/content/ComponentName;)Z

    move-result p0

    if-eqz p0, :cond_48

    const/4 p0, 0x1

    return p0

    :cond_48
    return v2
.end method

.method public final sendCoverAttachStateLocked(ZLcom/samsung/android/cover/CoverState;)V
    .registers 13

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverVerifier:Lcom/android/server/sepunion/cover/CoverVerifier;

    iget-boolean v1, v1, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->getCoverSwitchStateFromInputManager()I

    move-result v3

    if-eq v3, v0, :cond_f

    goto :goto_11

    :cond_f
    move v3, v2

    goto :goto_12

    :cond_11
    :goto_11
    move v3, v0

    :goto_12
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v4

    if-nez v4, :cond_28

    iget-object v4, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mAutoScreenOn:Lcom/android/server/sepunion/cover/AutoScreenOn;

    invoke-virtual {v4}, Lcom/android/server/sepunion/cover/AutoScreenOn;->support()Z

    move-result v4

    if-eqz v4, :cond_29

    iget-object v4, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mAutoScreenOn:Lcom/android/server/sepunion/cover/AutoScreenOn;

    invoke-virtual {v4}, Lcom/android/server/sepunion/cover/AutoScreenOn;->off()Z

    move-result v4

    if-eqz v4, :cond_29

    :cond_28
    move v3, v0

    :cond_29
    iget-object v4, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverVerifier:Lcom/android/server/sepunion/cover/CoverVerifier;

    iget-object v5, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v4, v5, p2}, Lcom/android/server/sepunion/cover/CoverVerifier;->updateCoverPropertiesLocked(Lcom/samsung/android/cover/CoverState;Lcom/samsung/android/cover/CoverState;)V

    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {p2}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result p2

    iget-object v4, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverState;->getColor()I

    iget-object v4, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v4, Lcom/android/server/sepunion/cover/Feature;->sIsSupportSecureCover:Z

    if-eqz v4, :cond_54

    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result p0

    invoke-virtual {p1, p2, v1, p0}, Lcom/android/server/sepunion/cover/StateNotifier;->updateCoverAttachState(IZZ)V

    return-void

    :cond_54
    iget-object v4, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverState;->getColor()I

    if-eqz p2, :cond_a4

    const/4 v4, 0x7

    if-eq p2, v4, :cond_88

    const/16 v4, 0xb

    if-eq p2, v4, :cond_67

    const/16 v4, 0xe

    if-eq p2, v4, :cond_88

    goto :goto_c4

    :cond_67
    iget-object v4, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v4, Lcom/android/server/sepunion/cover/Feature;->sIsSupportNeonCover:Z

    if-eqz v4, :cond_c4

    iget-object v4, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    if-nez v4, :cond_c4

    new-instance v4, Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    iget-object v5, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v6}, Lcom/android/server/sepunion/cover/GenericCoverServiceController;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    goto :goto_c4

    :cond_88
    iget-object v4, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v4, Lcom/android/server/sepunion/cover/Feature;->sIsNfcAuthSystemFeatureEnabled:Z

    if-eqz v4, :cond_c4

    iget-object v4, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    if-nez v4, :cond_9c

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->initializeLedCoverController()V

    :cond_9c
    iget-object v4, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    if-eqz v4, :cond_c4

    invoke-virtual {v4, p2, v1}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->updateNfcLedCoverAttachStateLocked(IZ)V

    goto :goto_c4

    :cond_a4
    iget-object v4, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v4, Lcom/android/server/sepunion/cover/Feature;->sIsSupportFlipCover:Z

    if-eqz v4, :cond_c4

    iget-object v4, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    if-nez v4, :cond_c4

    new-instance v4, Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    iget-object v5, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v6}, Lcom/android/server/sepunion/cover/GenericCoverServiceController;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    :cond_c4
    :goto_c4
    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mIsAttachStateChanged:Z

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v1, :cond_189

    iget-object v6, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-virtual {v6, p2, v2}, Lcom/android/server/sepunion/cover/CoverServiceManager;->bindCoverService(IZ)V

    iget-object v6, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    iget-object v7, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v7}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v7

    invoke-virtual {v6, p2, v0, v7}, Lcom/android/server/sepunion/cover/StateNotifier;->updateCoverAttachState(IZZ)V

    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/sepunion/cover/CoverDisabler;

    iget-boolean v6, p2, Lcom/android/server/sepunion/cover/CoverDisabler;->mCoverManagerDisabled:Z

    if-nez v6, :cond_e4

    invoke-virtual {p0, v3, v0, v2}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->sendCoverSwitchStateLocked(ZZZ)Z

    goto :goto_e6

    :cond_e4
    iput-boolean v3, p2, Lcom/android/server/sepunion/cover/CoverDisabler;->mRealCoverSwitchState:Z

    :goto_e6
    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sCoverCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {p2}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    invoke-virtual {p2}, Lcom/samsung/android/cover/CoverState;->getFriendsType()I

    move-result p2

    if-eq v0, v5, :cond_14c

    if-nez p2, :cond_14c

    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p2, Lcom/android/server/sepunion/cover/Feature;->sIsNfcAuthSystemFeatureEnabled:Z

    if-eqz p2, :cond_14c

    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v2, Lcom/android/server/sepunion/cover/Feature;->sIsNfcAuthSystemFeatureEnabled:Z

    if-eqz v2, :cond_117

    goto :goto_11d

    :cond_117
    const-string v0, "/sys/devices/w1_bus_master1/w1_master_check_sn"

    invoke-static {v0, v4}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->getValueFromSysFS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_11d
    if-eqz v0, :cond_14c

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.android.intent.action.COVER_ATTACHED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "com.sec.android.soagent"

    const-string/jumbo v5, "com.sec.android.soagent.receiver.PhoneCoverReceiver"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "isBoot"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo p1, "serialNumber"

    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string/jumbo v0, "com.samsung.android.permission.COVER"

    invoke-virtual {p2, v2, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    const-string p1, "CoverManager_CoverManagerUtils"

    const-string/jumbo p2, "sendCoverInformationToAgent : broadcast !!"

    invoke-static {p1, p2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14c
    iget-boolean p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSupportHallIcSensor:Z

    if-eqz p1, :cond_25d

    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez p1, :cond_161

    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "sensor"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSensorManager:Landroid/hardware/SensorManager;

    :cond_161
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSensorManager:Landroid/hardware/SensorManager;

    const p2, 0x10040

    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    if-eqz p1, :cond_25d

    const-string p2, "CoverManager_CoverManagerServiceImpl"

    const-string/jumbo v0, "sendCoverAttachStateLocked : register Sensor "

    invoke-static {p2, v0}, Lcom/samsung/android/sepunion/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mHallicSensorEventListener:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$7;

    if-nez v0, :cond_181

    new-instance v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$7;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$7;-><init>(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mHallicSensorEventListener:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$7;

    :cond_181
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mHallicSensorEventListener:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$7;

    const/4 v0, 0x3

    invoke-virtual {p2, p0, p1, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto/16 :goto_25d

    :cond_189
    invoke-virtual {p0, v0, v0, v2}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->sendCoverSwitchStateLocked(ZZZ)Z

    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    iget-object v6, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v6}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v6

    invoke-virtual {p1, p2, v2, v6}, Lcom/android/server/sepunion/cover/StateNotifier;->updateCoverAttachState(IZZ)V

    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "CoverManager_CoverServiceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "unbindCoverService : type = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p1, Lcom/android/server/sepunion/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_1b3
    iget-object v6, p1, Lcom/android/server/sepunion/cover/CoverServiceManager;->mActiveServices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v2

    :goto_1ba
    if-ge v8, v7, :cond_1ca

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/2addr v8, v0

    check-cast v9, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;

    invoke-virtual {p1, v9}, Lcom/android/server/sepunion/cover/CoverServiceManager;->unbindCoverServiceLocked(Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)V

    goto :goto_1ba

    :catchall_1c7
    move-exception p0

    goto/16 :goto_27d

    :cond_1ca
    monitor-exit p2
    :try_end_1cb
    .catchall {:try_start_1b3 .. :try_end_1cb} :catchall_1c7

    iget-object v6, p1, Lcom/android/server/sepunion/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_1ce
    iget-object p2, p1, Lcom/android/server/sepunion/cover/CoverServiceManager;->mActiveServices:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    iget-object p2, p1, Lcom/android/server/sepunion/cover/CoverServiceManager;->mBindingTimestamp:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    monitor-exit v6
    :try_end_1d9
    .catchall {:try_start_1ce .. :try_end_1d9} :catchall_27a

    iget-boolean p2, p1, Lcom/android/server/sepunion/cover/CoverServiceManager;->mRegisterBroadcast:Z

    if-eqz p2, :cond_1e6

    iget-object p2, p1, Lcom/android/server/sepunion/cover/CoverServiceManager;->mContext:Landroid/content/Context;

    iget-object v6, p1, Lcom/android/server/sepunion/cover/CoverServiceManager;->mBroadcastReceiver:Lcom/android/server/sepunion/cover/CoverServiceManager$1;

    invoke-virtual {p2, v6}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-boolean v2, p1, Lcom/android/server/sepunion/cover/CoverServiceManager;->mRegisterBroadcast:Z

    :cond_1e6
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/sepunion/cover/CoverDisabler;

    iput-boolean v0, p1, Lcom/android/server/sepunion/cover/CoverDisabler;->mRealCoverSwitchState:Z

    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    if-eqz p1, :cond_1f1

    iput-object v4, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    goto :goto_1f7

    :cond_1f1
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    if-eqz p1, :cond_1f7

    iput-object v4, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    :cond_1f7
    :goto_1f7
    iget-boolean p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSupportHallIcSensor:Z

    if-eqz p1, :cond_22a

    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mHallicSensorEventListener:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$7;

    if-eqz p1, :cond_22a

    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez p1, :cond_210

    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "sensor"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSensorManager:Landroid/hardware/SensorManager;

    :cond_210
    const-string p1, "CoverManager_CoverManagerServiceImpl"

    const-string/jumbo p2, "sendCoverAttachStateLocked : unregister Sensor "

    invoke-static {p1, p2}, Lcom/samsung/android/sepunion/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mHallicSensorEventListener:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$7;

    if-nez p2, :cond_225

    new-instance p2, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$7;

    invoke-direct {p2, p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$7;-><init>(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)V

    iput-object p2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mHallicSensorEventListener:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$7;

    :cond_225
    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mHallicSensorEventListener:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$7;

    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_22a
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iput v5, p1, Lcom/samsung/android/cover/CoverState;->type:I

    const-string p1, "CoverManager_CoverManagerServiceImpl"

    const-string/jumbo p2, "dispatchInputManager : switchState = "

    :try_start_233
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", type = "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    if-eqz p0, :cond_254

    invoke-virtual {p0, v0, v5}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setCoverMode(ZI)V

    goto :goto_25d

    :catch_252
    move-exception p0

    goto :goto_25a

    :cond_254
    const-string p0, "InputDeviceManager is null"

    invoke-static {p1, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_259
    .catch Ljava/lang/NullPointerException; {:try_start_233 .. :try_end_259} :catch_252

    goto :goto_25d

    :goto_25a
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_25d
    :goto_25d
    const-string p0, "CoverManager_CoverManagerServiceImpl"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "sendCoverAttachStateLocked : coverAttached = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", switchState="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_27a
    move-exception p0

    :try_start_27b
    monitor-exit v6
    :try_end_27c
    .catchall {:try_start_27b .. :try_end_27c} :catchall_27a

    throw p0

    :goto_27d
    :try_start_27d
    monitor-exit p2
    :try_end_27e
    .catchall {:try_start_27d .. :try_end_27e} :catchall_1c7

    throw p0
.end method

.method public final sendCoverSwitchStateLocked(ZZZ)Z
    .registers 15

    const-string v0, "CoverManager_"

    const/4 v1, 0x0

    if-nez p2, :cond_14

    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {p2}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result p2

    if-ne p1, p2, :cond_14

    const-string/jumbo p0, "cover switch fail because switch state is same"

    invoke-static {v0, p0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_14
    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {p2}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result p2

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v2, p2}, Lcom/android/server/sepunion/cover/CoverServiceManager;->verifySystemFeature(Landroid/content/Context;I)Z

    move-result v2

    const-string v3, "CoverManager_CoverManagerServiceImpl"

    if-nez v2, :cond_51

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "sendCoverSwitchStateLocked : return false because type("

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") is not supported"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "cover switch fail because type("

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_51
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->isBackCover(Lcom/samsung/android/cover/CoverState;)Z

    move-result v0

    if-eqz v0, :cond_87

    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mIsAttachStateChanged:Z

    if-nez v0, :cond_70

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "sendCoverSwitchStateLocked : return because this cover is back cover "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_70
    if-eqz v0, :cond_89

    if-nez p1, :cond_89

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "sendCoverSwitchStateLocked : return because attach state is changed, but switch is false "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_87
    iput-boolean v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mIsAttachStateChanged:Z

    :cond_89
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0, p1}, Lcom/samsung/android/cover/CoverState;->setSwitchState(Z)V

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    const/16 v2, 0x11

    const/16 v4, 0x10

    const/16 v5, 0xf

    const/16 v6, 0x8

    const/4 v7, 0x1

    if-eq v0, v6, :cond_a8

    if-eq v0, v5, :cond_a8

    if-eq v0, v4, :cond_a8

    if-ne v0, v2, :cond_a6

    goto :goto_a8

    :cond_a6
    move v0, v1

    goto :goto_a9

    :cond_a8
    :goto_a8
    move v0, v7

    :goto_a9
    const/16 v8, 0xb

    if-nez v0, :cond_af

    if-ne p2, v8, :cond_d9

    :cond_af
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v0, v0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iget-boolean v9, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mIsCoverAppCovered:Z

    iget-object v10, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSleepTokenAcquirer:Lcom/android/server/sepunion/cover/SleepTokenAcquirer;

    iput-boolean v0, v10, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->mSwitchState:Z

    iput-boolean v9, v10, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->mIsCoverAppCovered:Z

    iget-object v0, v10, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->mHandler:Landroid/os/Handler;

    iget-object v9, v10, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->mSleepTokenTask:Lcom/android/server/sepunion/cover/SleepTokenAcquirer$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverHideAnimator:Lcom/android/server/sepunion/cover/CoverHideAnimator;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v9, "CoverManager_CoverHideAnimator"

    const-string/jumbo v10, "cancelHideAnimation()"

    invoke-static {v9, v10}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mHandler:Lcom/android/server/sepunion/cover/CoverHideAnimator$1;

    const/16 v9, 0x66

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_d9
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    if-eq v0, v6, :cond_e7

    if-eq v0, v5, :cond_e7

    if-eq v0, v4, :cond_e7

    if-ne v0, v2, :cond_e8

    :cond_e7
    move v1, v7

    :cond_e8
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mHandler:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$CoverManagerHandler;

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/sepunion/cover/CoverServiceManager;

    iget-object v4, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    if-nez v1, :cond_f6

    if-ne p2, v8, :cond_11c

    iget-boolean v1, v4, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisabledByApp:Z

    if-nez v1, :cond_11c

    :cond_f6
    if-eqz p3, :cond_11c

    if-ne p1, v7, :cond_11c

    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p1

    if-eqz p1, :cond_10b

    new-instance p1, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$8;

    invoke-direct {p1, p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$8;-><init>(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_148

    :cond_10b
    invoke-virtual {v4, p2, v7}, Lcom/android/server/sepunion/cover/StateNotifier;->updatePowerState(IZ)V

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->cloneCoverStateLocked()Lcom/samsung/android/cover/CoverState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->updateCoverStateToWindowManagerLocked(Lcom/samsung/android/cover/CoverState;)V

    invoke-virtual {v2, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    invoke-virtual {v4, p1}, Lcom/android/server/sepunion/cover/StateNotifier;->updateCoverSwitchState(Lcom/samsung/android/cover/CoverState;)V

    goto :goto_148

    :cond_11c
    if-eqz p2, :cond_138

    const/4 p3, 0x7

    if-ne p2, p3, :cond_122

    goto :goto_138

    :cond_122
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->cloneCoverStateLocked()Lcom/samsung/android/cover/CoverState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->updateCoverStateToWindowManagerLocked(Lcom/samsung/android/cover/CoverState;)V

    invoke-virtual {v2, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    invoke-virtual {v4, p1}, Lcom/android/server/sepunion/cover/StateNotifier;->updateCoverSwitchState(Lcom/samsung/android/cover/CoverState;)V

    new-instance p1, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$9;

    invoke-direct {p1, p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$9;-><init>(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_148

    :cond_138
    :goto_138
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->cloneCoverStateLocked()Lcom/samsung/android/cover/CoverState;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->updateCoverStateToWindowManagerLocked(Lcom/samsung/android/cover/CoverState;)V

    invoke-virtual {v2, p3}, Lcom/android/server/sepunion/cover/CoverServiceManager;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    invoke-virtual {v4, p3}, Lcom/android/server/sepunion/cover/StateNotifier;->updateCoverSwitchState(Lcom/samsung/android/cover/CoverState;)V

    invoke-virtual {v4, p2, p1}, Lcom/android/server/sepunion/cover/StateNotifier;->updatePowerState(IZ)V

    :goto_148
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "sendCoverSwitchStateLocked : switchState = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean p2, p2, Lcom/samsung/android/cover/CoverState;->switchState:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", type = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget p2, p2, Lcom/samsung/android/cover/CoverState;->type:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", color = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget p2, p2, Lcom/samsung/android/cover/CoverState;->color:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", widthPixel = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget p2, p2, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", heightPixel = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget p0, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7
.end method

.method public final setFotaInProgress(ZLandroid/os/IBinder;Landroid/content/ComponentName;)Z
    .registers 10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "CoverManager_CoverManagerServiceImpl"

    if-eq v0, v1, :cond_26

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerAllowLists:Lcom/android/server/sepunion/cover/CoverManagerAllowLists;

    invoke-virtual {v5, v0, v1, v4}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_26

    const-string/jumbo p0, "setFotaInProgress : caller is invalid"

    invoke-static {v3, p0}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_26
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setFotaInProgress : inProgress = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    if-eqz p0, :cond_44

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->setFotaInProgress(ZLandroid/os/IBinder;Landroid/content/ComponentName;)Z

    move-result p0

    if-eqz p0, :cond_44

    const/4 p0, 0x1

    return p0

    :cond_44
    return v2
.end method

.method public final updateCoverAttachState(ZZLcom/samsung/android/cover/CoverState;)V
    .registers 9

    const-string v0, "CoverManager_CoverManagerServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateCoverAttachState : attach="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isBoot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_23

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->performCPUBoostCover(Landroid/content/Context;)V

    :cond_23
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverVerifier:Lcom/android/server/sepunion/cover/CoverVerifier;

    iget-object v1, v0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsNfcAuthSystemFeatureEnabled:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_3a

    iget-boolean v1, v0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    if-eq v1, p1, :cond_57

    iput-boolean p1, v0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    goto :goto_58

    :cond_3a
    iget-object v1, v0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsDeviceSupportVerifyCover:Z

    if-eqz v1, :cond_50

    sget-object v1, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestVisibleRect:Landroid/graphics/Rect;

    iget-boolean v1, v0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    if-eq v1, p1, :cond_57

    iput-boolean p1, v0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    goto :goto_58

    :cond_50
    iget-boolean v1, v0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    if-nez v1, :cond_57

    iput-boolean v2, v0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    goto :goto_58

    :cond_57
    const/4 v2, 0x0

    :goto_58
    iget-boolean v1, v0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    iput-boolean v1, v0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverVerified:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateCoverAttachState : mIsCoverVerified ="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, v0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    const-string v3, ", attached="

    const-string v4, ", change="

    invoke-static {v1, v0, v3, p1, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CoverManager_CoverVerifier"

    invoke-static {v0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_86

    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_7e
    invoke-virtual {p0, p2, p3}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->sendCoverAttachStateLocked(ZLcom/samsung/android/cover/CoverState;)V

    monitor-exit p1

    return-void

    :catchall_83
    move-exception p0

    monitor-exit p1
    :try_end_85
    .catchall {:try_start_7e .. :try_end_85} :catchall_83

    throw p0

    :cond_86
    const-string p0, "CoverManager_CoverManagerServiceImpl"

    const-string/jumbo p1, "updateCoverAttachState : Returning attach state - it is same"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final updateCoverStateToWindowManagerLocked(Lcom/samsung/android/cover/CoverState;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    if-nez v0, :cond_13

    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    :cond_13
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    if-eqz p0, :cond_42

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_21
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    if-eqz p0, :cond_32

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mCoverPolicy:Lcom/android/server/wm/CoverPolicy;

    goto :goto_33

    :catchall_30
    move-exception p0

    goto :goto_3d

    :cond_32
    const/4 p0, 0x0

    :goto_33
    if-eqz p0, :cond_38

    invoke-virtual {p0, p1}, Lcom/android/server/wm/CoverPolicy;->updateCoverStateLocked(Lcom/samsung/android/cover/CoverState;)V

    :cond_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_21 .. :try_end_39} :catchall_30

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_3d
    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_30

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :cond_42
    const-string p0, "CoverManager_CoverManagerServiceImpl"

    const-string/jumbo p1, "updateCoverStateToWindowManagerLocked : wms is null"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final updateCoverSwitchState(ZZ)V
    .registers 7

    const-string/jumbo v0, "updateCoverSwitchState : switchState = "

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    const-string v2, "CoverManager_CoverManagerServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isBoot = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportSecureCover:Z

    if-eqz v0, :cond_39

    const-string p0, "CoverManager_CoverManagerServiceImpl"

    const-string/jumbo p1, "updateCoverSwitchState : return because this cover is secure cover"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :catchall_36
    move-exception p0

    goto/16 :goto_c4

    :cond_39
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->isBackCover(Lcom/samsung/android/cover/CoverState;)Z

    move-result v0

    if-eqz v0, :cond_4b

    const-string p0, "CoverManager_CoverManagerServiceImpl"

    const-string/jumbo p1, "updateCoverSwitchState : return because this cover is back cover"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :cond_4b
    if-nez p2, :cond_62

    if-nez p1, :cond_5d

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_5d

    packed-switch v0, :pswitch_data_c6

    goto :goto_62

    :cond_5d
    :pswitch_5d  #0xf, 0x10, 0x11
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->performCPUBoostCover(Landroid/content/Context;)V

    :cond_62
    :goto_62
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsNfcAuthSystemFeatureEnabled:Z

    if-nez v0, :cond_90

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsDeviceSupportDetectCover:Z

    if-nez v0, :cond_90

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverVerifier:Lcom/android/server/sepunion/cover/CoverVerifier;

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/CoverVerifier;->updateCoverVerification()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_89

    invoke-virtual {p0, p2, v2}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->sendCoverAttachStateLocked(ZLcom/samsung/android/cover/CoverState;)V

    goto :goto_90

    :cond_89
    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverVerifier:Lcom/android/server/sepunion/cover/CoverVerifier;

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {p2, v0, v2}, Lcom/android/server/sepunion/cover/CoverVerifier;->updateCoverPropertiesLocked(Lcom/samsung/android/cover/CoverState;Lcom/samsung/android/cover/CoverState;)V

    :cond_90
    :goto_90
    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverVerifier:Lcom/android/server/sepunion/cover/CoverVerifier;

    iget-boolean p2, p2, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    const/4 v0, 0x1

    if-nez p2, :cond_9f

    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    xor-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/os/PowerManager;->updateCoverState(Z)V

    monitor-exit v1

    return-void

    :cond_9f
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->sendCoverSwitchStateLocked(ZZZ)Z

    move-result p2

    if-eqz p1, :cond_c2

    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    if-eqz p1, :cond_c2

    if-eqz p2, :cond_c2

    const-string p1, "CoverManager_"

    const-string/jumbo p2, "wake up by cover open"

    invoke-static {p1, p2}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    const-string/jumbo v0, "updateCoverSwitchState"

    const/16 v2, 0x67

    invoke-virtual {p0, p1, p2, v2, v0}, Landroid/os/PowerManager;->semWakeUp(JILjava/lang/String;)V

    :cond_c2
    monitor-exit v1

    return-void

    :goto_c4
    monitor-exit v1
    :try_end_c5
    .catchall {:try_start_6 .. :try_end_c5} :catchall_36

    throw p0

    :pswitch_data_c6
    .packed-switch 0xf
        :pswitch_5d  #0000000f
        :pswitch_5d  #00000010
        :pswitch_5d  #00000011
    .end packed-switch
.end method
