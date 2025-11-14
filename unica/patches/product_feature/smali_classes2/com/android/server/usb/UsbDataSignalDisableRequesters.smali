.class public final Lcom/android/server/usb/UsbDataSignalDisableRequesters;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mExternalUids:Landroid/util/ArraySet;

.field public final mInternalReasons:Landroid/util/ArraySet;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbDataSignalDisableRequesters;->mExternalUids:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbDataSignalDisableRequesters;->mInternalReasons:Landroid/util/ArraySet;

    return-void
.end method
