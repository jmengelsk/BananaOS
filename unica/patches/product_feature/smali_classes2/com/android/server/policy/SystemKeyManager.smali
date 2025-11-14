.class public final Lcom/android/server/policy/SystemKeyManager;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final SUPPORT_KEYCODE:[I

.field public static sInstance:Lcom/android/server/policy/SystemKeyManager;

.field public static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field public mFakeFocusedWindowState:Lcom/android/server/wm/WindowState;

.field public mFocusedWindow:Ljava/lang/String;

.field public mFocusedWindowState:Lcom/android/server/wm/WindowState;

.field public mIsActivatedHomeKey:Z

.field public mIsActivatedRecentKey:Z

.field public mMetaKeyPass:Z

.field public final mMetaKeyRequestedComponents:Ljava/util/HashSet;

.field public mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerService$2;

.field public final mSystemKeyInfoMap:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_14

    sput-object v0, Lcom/android/server/policy/SystemKeyManager;->SUPPORT_KEYCODE:[I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/policy/SystemKeyManager;->sInstanceLock:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/policy/SystemKeyManager;->sInstance:Lcom/android/server/policy/SystemKeyManager;

    return-void

    nop

    :array_14
    .array-data 4
        0x1a
        0x3
        0xbb
        0x6
        0x428
        0xe0
        0x450
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/SystemKeyManager;->mFocusedWindow:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/SystemKeyManager;->mMetaKeyRequestedComponents:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/SystemKeyManager;->mMetaKeyPass:Z

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/policy/SystemKeyManager;->mSystemKeyInfoMap:Landroid/util/SparseArray;

    iput-boolean v0, p0, Lcom/android/server/policy/SystemKeyManager;->mIsActivatedRecentKey:Z

    iput-boolean v0, p0, Lcom/android/server/policy/SystemKeyManager;->mIsActivatedHomeKey:Z

    return-void
.end method

.method public static checkValidRequestedDefaultInfo(IILandroid/content/ComponentName;)Z
    .registers 5

    if-eqz p2, :cond_38

    const/4 p2, 0x3

    if-eq p0, p2, :cond_36

    const/4 p2, 0x6

    if-eq p0, p2, :cond_36

    const/16 p2, 0x1a

    if-eq p0, p2, :cond_36

    const/16 p2, 0xbb

    if-eq p0, p2, :cond_36

    const/16 p2, 0xe0

    if-eq p0, p2, :cond_36

    const/16 p2, 0x428

    if-eq p0, p2, :cond_36

    const/16 p2, 0x450

    if-eq p0, p2, :cond_36

    const/4 p2, -0x1

    const-string v0, ") does not supported."

    const-string/jumbo v1, "requested keyCode was wrong. The keyCode("

    if-ne p1, p2, :cond_2c

    const-string/jumbo p1, "SystemKeyManager"

    invoke-static {p0, v1, v0, p1}, Lcom/android/server/FileDescriptorWatcher$FileDescriptorLeakWatcher$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_2c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, v1, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_36
    const/4 p0, 0x1

    return p0

    :cond_38
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "requested component name is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInstance()Lcom/android/server/policy/SystemKeyManager;
    .registers 2

    sget-object v0, Lcom/android/server/policy/SystemKeyManager;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/server/policy/SystemKeyManager;->sInstance:Lcom/android/server/policy/SystemKeyManager;

    if-nez v1, :cond_11

    new-instance v1, Lcom/android/server/policy/SystemKeyManager;

    invoke-direct {v1}, Lcom/android/server/policy/SystemKeyManager;-><init>()V

    sput-object v1, Lcom/android/server/policy/SystemKeyManager;->sInstance:Lcom/android/server/policy/SystemKeyManager;

    goto :goto_11

    :catchall_f
    move-exception v1

    goto :goto_15

    :cond_11
    :goto_11
    sget-object v1, Lcom/android/server/policy/SystemKeyManager;->sInstance:Lcom/android/server/policy/SystemKeyManager;

    monitor-exit v0

    return-object v1

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_f

    throw v1
.end method

.method public static keyPressToString(I)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v1, p0, 0x3

    if-eqz v1, :cond_e

    const-string v1, "KEY_PRESS_SINGLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    and-int/lit8 v1, p0, 0x4

    const-string v2, " | "

    if-eqz v1, :cond_22

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1d
    const-string v1, "KEY_PRESS_LONG"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_22
    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_34

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2f
    const-string p0, "KEY_PRESS_DOUBLE"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3f

    const-string p0, "0"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final findFocusedWindow(I)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p1, v0, :cond_11

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_11

    const/16 v0, 0xbb

    if-eq p1, v0, :cond_11

    const/16 v0, 0xe0

    if-eq p1, v0, :cond_11

    goto :goto_2a

    :cond_11
    iget-object p1, p0, Lcom/android/server/policy/SystemKeyManager;->mFakeFocusedWindowState:Lcom/android/server/wm/WindowState;

    if-nez p1, :cond_16

    goto :goto_2a

    :cond_16
    iget-object v0, p0, Lcom/android/server/policy/SystemKeyManager;->mFocusedWindowState:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_20

    iget v2, p1, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    iget v0, v0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-le v2, v0, :cond_2a

    :cond_20
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2a
    :goto_2a
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_31

    return-object v1

    :cond_31
    iget-object p0, p0, Lcom/android/server/policy/SystemKeyManager;->mFocusedWindow:Ljava/lang/String;

    return-object p0
.end method

.method public final hasMetaKeyPass()Z
    .registers 4

    const-string/jumbo v0, "hasMetaKeyPass() : MetaKey is blocked by componentName="

    monitor-enter p0

    :try_start_4
    iget-boolean v1, p0, Lcom/android/server/policy/SystemKeyManager;->mMetaKeyPass:Z

    if-eqz v1, :cond_28

    sget-object v1, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v1, :cond_25

    const-string/jumbo v1, "SystemKeyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/SystemKeyManager;->mFocusedWindow:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    :catchall_23
    move-exception v0

    goto :goto_2b

    :cond_25
    :goto_25
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :cond_28
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :goto_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_4 .. :try_end_2c} :catchall_23

    throw v0
.end method

.method public final hasSystemKeyInfo(II)Z
    .registers 5

    sget-object v0, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v0, :cond_2a

    const-string/jumbo v0, "hasSystemKeyInfo() is called keyCode="

    const-string v1, " press="

    invoke-static {p1, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/android/server/policy/SystemKeyManager;->keyPressToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " focusedWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/policy/SystemKeyManager;->mFocusedWindow:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SystemKeyManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/policy/SystemKeyManager;->hasSystemKeyInfoWithFocusedWindow(IIZ)Z

    move-result p0

    return p0
.end method

.method public final hasSystemKeyInfoWithFocusedWindow(IIZ)Z
    .registers 11

    const-string/jumbo v0, "requested systemKeyInfo size="

    const-string/jumbo v1, "hasPress() : keyCode="

    sget-object v2, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v2, :cond_26

    const-string/jumbo v2, "SystemKeyManager"

    const-string/jumbo v3, "hasSystemKeyInfoWithFocusedWindow() is called keyCode="

    const-string v4, " press="

    invoke-static {p1, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Lcom/android/server/policy/SystemKeyManager;->keyPressToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    monitor-enter p0

    :try_start_27
    iget-object v2, p0, Lcom/android/server/policy/SystemKeyManager;->mSystemKeyInfoMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const/4 v3, 0x0

    if-eqz v2, :cond_ae

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3a

    goto/16 :goto_ae

    :cond_3a
    invoke-virtual {p0, p1}, Lcom/android/server/policy/SystemKeyManager;->findFocusedWindow(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_51

    const-string/jumbo p1, "SystemKeyManager"

    const-string/jumbo p2, "isSystemKeyEventRequested() : focusedWindow is empty."

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return v3

    :catchall_4f
    move-exception p1

    goto :goto_b0

    :cond_51
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/policy/SystemKeyManager$SystemKeyInfo;

    if-nez v5, :cond_5a

    goto :goto_8e

    :cond_5a
    iget-boolean v6, v5, Lcom/android/server/policy/SystemKeyManager$SystemKeyInfo;->keyPressOld:Z

    if-eqz v6, :cond_69

    iget p3, v5, Lcom/android/server/policy/SystemKeyManager$SystemKeyInfo;->keyCode:I

    const/16 v5, 0x1a

    if-ne p3, v5, :cond_71

    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_71

    goto :goto_8e

    :cond_69
    if-eqz p3, :cond_6c

    goto :goto_71

    :cond_6c
    iget p3, v5, Lcom/android/server/policy/SystemKeyManager$SystemKeyInfo;->press:I

    and-int/2addr p2, p3

    if-eqz p2, :cond_8e

    :cond_71
    :goto_71
    const-string/jumbo p2, "SystemKeyManager"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " focusedWindow="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :cond_8e
    :goto_8e
    const-string/jumbo p1, "SystemKeyManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " focusedWindow="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return v3

    :cond_ae
    :goto_ae
    monitor-exit p0

    return v3

    :goto_b0
    monitor-exit p0
    :try_end_b1
    .catchall {:try_start_27 .. :try_end_b1} :catchall_4f

    throw p1
.end method

.method public final isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z
    .registers 7

    sget-object v0, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v0, :cond_23

    const-string/jumbo v1, "SystemKeyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isSystemKeyEventRequested() is called keyCode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " componentName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    monitor-enter p0

    :try_start_24
    iget-object p2, p0, Lcom/android/server/policy/SystemKeyManager;->mSystemKeyInfoMap:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez p2, :cond_33

    monitor-exit p0

    return v1

    :catchall_31
    move-exception p1

    goto :goto_5d

    :cond_33
    invoke-virtual {p0, p1}, Lcom/android/server/policy/SystemKeyManager;->findFocusedWindow(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4a

    if-eqz v0, :cond_48

    const-string/jumbo p1, "SystemKeyManager"

    const-string/jumbo p2, "isSystemKeyEventRequested() : focusedWindow is empty."

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    monitor-exit p0

    return v1

    :cond_4a
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/policy/SystemKeyManager$SystemKeyInfo;

    if-nez p1, :cond_54

    monitor-exit p0

    return v1

    :cond_54
    iget-boolean p1, p1, Lcom/android/server/policy/SystemKeyManager$SystemKeyInfo;->keyPressOld:Z

    if-eqz p1, :cond_5b

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :cond_5b
    monitor-exit p0

    return v1

    :goto_5d
    monitor-exit p0
    :try_end_5e
    .catchall {:try_start_24 .. :try_end_5e} :catchall_31

    throw p1
.end method

.method public final notifyRequestedSystemKey()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/policy/SystemKeyManager;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerService$2;

    if-nez v0, :cond_e

    const-class v0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    iput-object v0, p0, Lcom/android/server/policy/SystemKeyManager;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerService$2;

    :cond_e
    iget-object v0, p0, Lcom/android/server/policy/SystemKeyManager;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerService$2;

    if-nez v0, :cond_13

    goto :goto_63

    :cond_13
    const/16 v1, 0xbb

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/policy/SystemKeyManager;->hasSystemKeyInfoWithFocusedWindow(IIZ)Z

    move-result v1

    iget-boolean v4, p0, Lcom/android/server/policy/SystemKeyManager;->mIsActivatedRecentKey:Z

    if-eq v4, v1, :cond_23

    iput-boolean v1, p0, Lcom/android/server/policy/SystemKeyManager;->mIsActivatedRecentKey:Z

    move v1, v3

    goto :goto_24

    :cond_23
    move v1, v2

    :goto_24
    const/4 v4, 0x3

    invoke-virtual {p0, v4, v2, v3}, Lcom/android/server/policy/SystemKeyManager;->hasSystemKeyInfoWithFocusedWindow(IIZ)Z

    move-result v2

    iget-boolean v4, p0, Lcom/android/server/policy/SystemKeyManager;->mIsActivatedHomeKey:Z

    if-eq v4, v2, :cond_30

    iput-boolean v2, p0, Lcom/android/server/policy/SystemKeyManager;->mIsActivatedHomeKey:Z

    goto :goto_31

    :cond_30
    move v3, v1

    :goto_31
    if-nez v3, :cond_34

    goto :goto_63

    :cond_34
    iget-boolean v1, p0, Lcom/android/server/policy/SystemKeyManager;->mIsActivatedRecentKey:Z

    iget-boolean p0, p0, Lcom/android/server/policy/SystemKeyManager;->mIsActivatedHomeKey:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "notifyRequestedSystemKey recent="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " home="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "StatusBarManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v2, v2, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-nez v2, :cond_5c

    goto :goto_63

    :cond_5c
    :try_start_5c
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, v1, p0}, Lcom/android/internal/statusbar/IStatusBar;->notifyRequestedSystemKey(ZZ)V
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_63} :catch_63

    :catch_63
    :goto_63
    return-void
.end method

.method public final updateFocusedWindow(Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    const-string/jumbo v0, "SystemKeyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateFocusedWindow() is called, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_1a
    iput-object p1, p0, Lcom/android/server/policy/SystemKeyManager;->mFocusedWindow:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/policy/SystemKeyManager;->mMetaKeyRequestedComponents:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/policy/SystemKeyManager;->mMetaKeyPass:Z

    goto :goto_2f

    :cond_28
    iget-boolean p1, p0, Lcom/android/server/policy/SystemKeyManager;->mMetaKeyPass:Z

    if-eqz p1, :cond_2f

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/policy/SystemKeyManager;->mMetaKeyPass:Z

    :cond_2f
    :goto_2f
    iget-object p1, p0, Lcom/android/server/policy/SystemKeyManager;->mSystemKeyInfoMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-eqz p1, :cond_3d

    invoke-virtual {p0}, Lcom/android/server/policy/SystemKeyManager;->notifyRequestedSystemKey()V

    goto :goto_3d

    :catchall_3b
    move-exception p1

    goto :goto_3f

    :cond_3d
    :goto_3d
    monitor-exit p0

    return-void

    :goto_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_1a .. :try_end_40} :catchall_3b

    throw p1
.end method
