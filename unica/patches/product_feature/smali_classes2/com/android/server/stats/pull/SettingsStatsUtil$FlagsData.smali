.class public final Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mDataType:I

.field public final mFlagName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;->mFlagName:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;->mDataType:I

    return-void
.end method
