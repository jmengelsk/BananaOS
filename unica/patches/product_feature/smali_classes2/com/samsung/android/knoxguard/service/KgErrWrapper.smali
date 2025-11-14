.class public Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final KGTA_FAILED:I = -0x4d2

.field public static final KGTA_PARAM_DEFAULT:I = 0x0

.field public static TAG:Ljava/lang/String; = "KgErrWrapper"


# instance fields
.field public data:[B

.field public err:I

.field public result:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x4d2

    iput v0, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    return-void
.end method


# virtual methods
.method public final getStr()Ljava/lang/String;
    .registers 2

    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->data:[B

    if-eqz p0, :cond_a

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_a
    const/4 p0, 0x0

    return-object p0
.end method

.method public final setErr(I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    return-void
.end method
