.class public final enum Lcom/samsung/android/camera/scpm/compatibilities/Compatibilities;
.super Ljava/lang/Enum;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/camera/scpm/compatibilities/Compatibilities;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/camera/scpm/compatibilities/Compatibilities;

.field public static final enum DEFAULT_COMPATIBILITIES:Lcom/samsung/android/camera/scpm/compatibilities/Compatibilities;


# instance fields
.field private extraPolicy:J

.field private policy:J


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v0, Lcom/samsung/android/camera/scpm/compatibilities/Compatibilities;

    const-string v6, "DEFAULT_COMPATIBILITIES"

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/camera/scpm/compatibilities/Compatibilities;-><init>(IJJLjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/camera/scpm/compatibilities/Compatibilities;->DEFAULT_COMPATIBILITIES:Lcom/samsung/android/camera/scpm/compatibilities/Compatibilities;

    new-instance v1, Lcom/samsung/android/camera/scpm/compatibilities/Compatibilities;

    const-string/jumbo v7, "USE_DISPLAY_LANDSCAPE_NATURAL_ORIENTATION"

    const/4 v2, 0x1

    const-wide/16 v3, 0x1

    const-wide/32 v5, 0xf4156bc

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/camera/scpm/compatibilities/Compatibilities;-><init>(IJJLjava/lang/String;)V

    new-instance v2, Lcom/samsung/android/camera/scpm/compatibilities/Compatibilities;

    const-string v8, "CAMERA_COMPAT_DISABLE_FORCE_ROTATION"

    const/4 v3, 0x2

    const-wide/16 v4, 0x2

    const-wide/32 v6, 0xfbbb1dc

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/camera/scpm/compatibilities/Compatibilities;-><init>(IJJLjava/lang/String;)V

    filled-new-array {v0, v1, v2}, [Lcom/samsung/android/camera/scpm/compatibilities/Compatibilities;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camera/scpm/compatibilities/Compatibilities;->$VALUES:[Lcom/samsung/android/camera/scpm/compatibilities/Compatibilities;

    return-void
.end method

.method public constructor <init>(IJJLjava/lang/String;)V
    .registers 7

    invoke-direct {p0, p6, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-wide p2, p0, Lcom/samsung/android/camera/scpm/compatibilities/Compatibilities;->policy:J

    iput-wide p4, p0, Lcom/samsung/android/camera/scpm/compatibilities/Compatibilities;->extraPolicy:J

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/camera/scpm/compatibilities/Compatibilities;
    .registers 2

    const-class v0, Lcom/samsung/android/camera/scpm/compatibilities/Compatibilities;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/scpm/compatibilities/Compatibilities;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/camera/scpm/compatibilities/Compatibilities;
    .registers 1

    sget-object v0, Lcom/samsung/android/camera/scpm/compatibilities/Compatibilities;->$VALUES:[Lcom/samsung/android/camera/scpm/compatibilities/Compatibilities;

    invoke-virtual {v0}, [Lcom/samsung/android/camera/scpm/compatibilities/Compatibilities;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/camera/scpm/compatibilities/Compatibilities;

    return-object v0
.end method


# virtual methods
.method public final getExtraPolicy()J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/camera/scpm/compatibilities/Compatibilities;->extraPolicy:J

    return-wide v0
.end method

.method public final getPolicy()J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/camera/scpm/compatibilities/Compatibilities;->policy:J

    return-wide v0
.end method
