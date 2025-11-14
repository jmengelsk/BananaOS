.class public final Lcom/android/server/smartclip/SpenGestureManagerService$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/smartclip/SpenGestureManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$2;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    sget-object v2, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "Pen DoubleTap : x="

    const-string v3, ", y="

    const-string v4, ", action="

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v2, "SpenGestureManagerService"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p1, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sget-object p1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const-string/jumbo v6, "getSealedState"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v3, 0x1

    if-eqz p1, :cond_71

    :try_start_42
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v4, "getSealedState"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_69

    const-string/jumbo p0, "now KNOX state : can\'t excute Double Tap"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_62
    .catchall {:try_start_42 .. :try_end_62} :catchall_66

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return v3

    :catchall_66
    move-exception v0

    move-object p0, v0

    goto :goto_6d

    :cond_69
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_71

    :goto_6d
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw p0

    :cond_71
    :goto_71
    iget-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$2;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, p1, Lcom/android/server/smartclip/SpenGestureManagerService;->mLastDoubleTapPosition:Landroid/graphics/Point;

    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$2;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    iget-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Lcom/android/server/smartclip/SpenGestureManagerService$5;

    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mPenDoubleTap:Lcom/android/server/smartclip/SpenGestureManagerService$4;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v3
.end method
