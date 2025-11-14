.class public final Lcom/android/server/selinux/SelinuxAuditLogBuilder;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final NO_OP_MATCHER:Ljava/util/regex/Matcher;


# instance fields
.field public final mAuditLog:Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;

.field final mPathMatcher:Ljava/util/regex/Matcher;

.field final mScontextMatcher:Ljava/util/regex/Matcher;

.field final mTcontextMatcher:Ljava/util/regex/Matcher;

.field public mTokens:Ljava/util/Iterator;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "no-op^"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    sput-object v0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->NO_OP_MATCHER:Ljava/util/regex/Matcher;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 7

    const-string v0, ""

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mGranted:Z

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mPermissions:[Ljava/lang/String;

    iput-object v3, v1, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mSType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mSCategories:[I

    iput-object v3, v1, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mTType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mTCategories:[I

    iput-object v3, v1, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mTClass:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mPath:Ljava/lang/String;

    iput-boolean v2, v1, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mPermissive:Z

    iput-object v1, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mAuditLog:Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;

    sget-object v1, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->NO_OP_MATCHER:Ljava/util/regex/Matcher;

    :try_start_22
    const-string/jumbo v2, "u:r:(?<stype>%s):s0(:c)?(?<scategories>((,c)?\\d+)+)*"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1
    :try_end_35
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_22 .. :try_end_35} :catch_50

    :try_start_35
    const-string/jumbo v2, "u:object_r:(?<ttype>\\w+):s0(:c)?(?<tcategories>((,c)?\\d+)+)*"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2
    :try_end_40
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_35 .. :try_end_40} :catch_4d

    :try_start_40
    const-string v3, "\"(?<path>/\\w+(/\\w+)?)(/\\w+)*\""

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1
    :try_end_4a
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_40 .. :try_end_4a} :catch_4b

    goto :goto_5b

    :catch_4b
    move-exception v0

    goto :goto_53

    :catch_4d
    move-exception v0

    move-object v2, v1

    goto :goto_53

    :catch_50
    move-exception v0

    move-object p1, v1

    move-object v2, p1

    :goto_53
    const-string/jumbo v3, "SelinuxAuditLogs"

    const-string v4, "Invalid pattern, setting every matcher to no-op."

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5b
    iput-object p1, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mScontextMatcher:Ljava/util/regex/Matcher;

    iput-object v2, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTcontextMatcher:Ljava/util/regex/Matcher;

    iput-object v1, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mPathMatcher:Ljava/util/regex/Matcher;

    return-void
.end method


# virtual methods
.method public final nextTokenMatches(Ljava/util/regex/Matcher;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTokens:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object p0, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTokens:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {p1, p0}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method
