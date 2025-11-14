.class public final enum Lcom/android/server/policy/TalkbackShortcutController$ShortcutSource;
.super Ljava/lang/Enum;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/policy/TalkbackShortcutController$ShortcutSource;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/policy/TalkbackShortcutController$ShortcutSource;

.field public static final enum GESTURE:Lcom/android/server/policy/TalkbackShortcutController$ShortcutSource;

.field public static final enum KEYBOARD:Lcom/android/server/policy/TalkbackShortcutController$ShortcutSource;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/android/server/policy/TalkbackShortcutController$ShortcutSource;

    const-string v1, "GESTURE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/policy/TalkbackShortcutController$ShortcutSource;->GESTURE:Lcom/android/server/policy/TalkbackShortcutController$ShortcutSource;

    new-instance v1, Lcom/android/server/policy/TalkbackShortcutController$ShortcutSource;

    const-string v2, "KEYBOARD"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/policy/TalkbackShortcutController$ShortcutSource;->KEYBOARD:Lcom/android/server/policy/TalkbackShortcutController$ShortcutSource;

    filled-new-array {v0, v1}, [Lcom/android/server/policy/TalkbackShortcutController$ShortcutSource;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/TalkbackShortcutController$ShortcutSource;->$VALUES:[Lcom/android/server/policy/TalkbackShortcutController$ShortcutSource;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/policy/TalkbackShortcutController$ShortcutSource;
    .registers 2

    const-class v0, Lcom/android/server/policy/TalkbackShortcutController$ShortcutSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/policy/TalkbackShortcutController$ShortcutSource;

    return-object p0
.end method

.method public static values()[Lcom/android/server/policy/TalkbackShortcutController$ShortcutSource;
    .registers 1

    sget-object v0, Lcom/android/server/policy/TalkbackShortcutController$ShortcutSource;->$VALUES:[Lcom/android/server/policy/TalkbackShortcutController$ShortcutSource;

    invoke-virtual {v0}, [Lcom/android/server/policy/TalkbackShortcutController$ShortcutSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/policy/TalkbackShortcutController$ShortcutSource;

    return-object v0
.end method
