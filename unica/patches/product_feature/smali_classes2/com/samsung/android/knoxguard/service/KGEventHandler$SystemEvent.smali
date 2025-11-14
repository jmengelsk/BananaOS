.class public final enum Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;
.super Ljava/lang/Enum;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;

.field public static final enum ON_BOOT_COMPLETED:Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;

.field public static final enum ON_PACKAGE_DATA_CLEARED:Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;

.field public static final enum ON_PACKAGE_REPLACED_OR_REMOVED:Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;

.field public static final enum ON_SETUP_WIZARD_COMPLETED:Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;

.field public static final enum ON_USER_PRESENT:Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;


# direct methods
.method public static synthetic $values()[Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;
    .locals 5

    sget-object v0, Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;->ON_BOOT_COMPLETED:Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;

    sget-object v1, Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;->ON_SETUP_WIZARD_COMPLETED:Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;

    sget-object v2, Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;->ON_USER_PRESENT:Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;

    sget-object v3, Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;->ON_PACKAGE_REPLACED_OR_REMOVED:Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;

    sget-object v4, Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;->ON_PACKAGE_DATA_CLEARED:Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;

    const-string/jumbo v1, "ON_BOOT_COMPLETED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;->ON_BOOT_COMPLETED:Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;

    new-instance v0, Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;

    const-string/jumbo v1, "ON_SETUP_WIZARD_COMPLETED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;->ON_SETUP_WIZARD_COMPLETED:Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;

    new-instance v0, Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;

    const-string/jumbo v1, "ON_USER_PRESENT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;->ON_USER_PRESENT:Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;

    new-instance v0, Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;

    const-string/jumbo v1, "ON_PACKAGE_REPLACED_OR_REMOVED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;->ON_PACKAGE_REPLACED_OR_REMOVED:Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;

    new-instance v0, Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;

    const-string/jumbo v1, "ON_PACKAGE_DATA_CLEARED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;->ON_PACKAGE_DATA_CLEARED:Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;

    invoke-static {}, Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;->$values()[Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;->$VALUES:[Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;
    .locals 1

    const-class v0, Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;
    .locals 1

    sget-object v0, Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;->$VALUES:[Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;

    invoke-virtual {v0}, [Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;

    return-object v0
.end method
