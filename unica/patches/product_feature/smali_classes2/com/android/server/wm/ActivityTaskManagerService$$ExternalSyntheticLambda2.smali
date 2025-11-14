.class public final synthetic Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Lcom/android/server/wm/ActivityRecord$WindowStyle;

    check-cast p1, Landroid/content/res/TypedArray;

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityRecord$WindowStyle;-><init>(Landroid/content/res/TypedArray;)V

    return-object p0
.end method
