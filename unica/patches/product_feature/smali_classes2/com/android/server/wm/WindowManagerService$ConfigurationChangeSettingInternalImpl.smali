.class public final Lcom/android/server/wm/WindowManagerService$ConfigurationChangeSettingInternalImpl;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/window/ConfigurationChangeSetting$ConfigurationChangeSettingInternal;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$ConfigurationChangeSettingInternalImpl;->this$0:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method


# virtual methods
.method public final createImplFromParcel(ILandroid/os/Parcel;)Landroid/window/ConfigurationChangeSetting;
    .registers 4

    if-eqz p1, :cond_18

    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    new-instance p1, Lcom/android/server/wm/WindowManagerService$ConfigurationChangeSettingInternalImpl$FontScaleSettingImpl;

    invoke-direct {p1, p0, p2}, Lcom/android/server/wm/WindowManagerService$ConfigurationChangeSettingInternalImpl$FontScaleSettingImpl;-><init>(Lcom/android/server/wm/WindowManagerService$ConfigurationChangeSettingInternalImpl;Landroid/os/Parcel;)V

    return-object p1

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "Unknown setting type "

    invoke-static {p1, p2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_18
    new-instance p1, Lcom/android/server/wm/WindowManagerService$ConfigurationChangeSettingInternalImpl$DensitySettingImpl;

    invoke-direct {p1, p0, p2}, Lcom/android/server/wm/WindowManagerService$ConfigurationChangeSettingInternalImpl$DensitySettingImpl;-><init>(Lcom/android/server/wm/WindowManagerService$ConfigurationChangeSettingInternalImpl;Landroid/os/Parcel;)V

    return-object p1
.end method
