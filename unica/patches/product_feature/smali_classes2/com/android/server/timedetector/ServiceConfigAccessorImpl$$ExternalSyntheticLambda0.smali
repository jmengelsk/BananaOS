.class public final synthetic Lcom/android/server/timedetector/ServiceConfigAccessorImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/timezonedetector/StateChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/timedetector/ServiceConfigAccessorImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/timedetector/ServiceConfigAccessorImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/timedetector/ServiceConfigAccessorImpl;

    return-void
.end method


# virtual methods
.method public final onChange()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/timedetector/ServiceConfigAccessorImpl;

    invoke-virtual {p0}, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->handleConfigurationInternalChangeOnMainThread()V

    return-void
.end method
