.class public final synthetic Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/timezonedetector/StateChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;

    return-void
.end method


# virtual methods
.method public final onChange()V
    .locals 1

    sget v0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->handleConfigurationUpdate()V

    return-void
.end method
