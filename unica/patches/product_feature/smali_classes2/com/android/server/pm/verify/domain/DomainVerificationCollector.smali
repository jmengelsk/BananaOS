.class public final Lcom/android/server/pm/verify/domain/DomainVerificationCollector;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final ARRAY_SET_COLLECTOR:Lcom/android/server/pm/verify/domain/DomainVerificationCollector$$ExternalSyntheticLambda0;

.field public static final DOMAIN_NAME_WITH_WILDCARD:Ljava/util/regex/Pattern;


# instance fields
.field public final mDomainMatcher:Ljava/util/regex/Matcher;

.field public final mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

.field public final mSystemConfig:Lcom/android/server/SystemConfig;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(\\*\\.)?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/util/Patterns;->DOMAIN_NAME:Ljava/util/regex/Pattern;

    invoke-virtual {v1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->DOMAIN_NAME_WITH_WILDCARD:Ljava/util/regex/Pattern;

    new-instance v0, Lcom/android/server/pm/verify/domain/DomainVerificationCollector$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->ARRAY_SET_COLLECTOR:Lcom/android/server/pm/verify/domain/DomainVerificationCollector$$ExternalSyntheticLambda0;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/compat/PlatformCompat;Lcom/android/server/SystemConfig;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    iput-object p2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->mSystemConfig:Lcom/android/server/SystemConfig;

    sget-object p1, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->DOMAIN_NAME_WITH_WILDCARD:Ljava/util/regex/Pattern;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->mDomainMatcher:Ljava/util/regex/Matcher;

    return-void
.end method


# virtual methods
.method public final collectDomains(Lcom/android/server/pm/pkg/AndroidPackage;ZZ)Landroid/util/ArraySet;
    .registers 10

    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    sget-object v5, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->ARRAY_SET_COLLECTOR:Lcom/android/server/pm/verify/domain/DomainVerificationCollector$$ExternalSyntheticLambda0;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectDomains(Lcom/android/server/pm/pkg/AndroidPackage;ZZLjava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    return-object v4
.end method

.method public final collectDomains(Lcom/android/server/pm/pkg/AndroidPackage;ZZLjava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 24

    move-object/from16 v0, p0

    const/4 v1, 0x1

    iget-object v2, v0, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    sget-object v3, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->sCachedMatcher:Ljava/lang/ThreadLocal;

    new-instance v3, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v3}, Landroid/content/pm/ApplicationInfo;-><init>()V

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v4

    iput v4, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const-wide/32 v4, 0xa74866d

    invoke-virtual {v2, v4, v5, v3}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledInternalNoLogging(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectDomainsInternal(Lcom/android/server/pm/pkg/AndroidPackage;ZZLjava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_26
    if-nez p2, :cond_35

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v1, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectDomainsInternal(Lcom/android/server/pm/pkg/AndroidPackage;ZZLjava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_35
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v0, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->mSystemConfig:Lcom/android/server/SystemConfig;

    iget-object v4, v4, Lcom/android/server/SystemConfig;->mLinkedApps:Landroid/util/ArraySet;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_7a

    move v6, v5

    :goto_4d
    if-ge v6, v3, :cond_76

    if-nez v4, :cond_76

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getIntents()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    move v9, v5

    :goto_60
    if-ge v9, v8, :cond_74

    if-nez v4, :cond_74

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/IntentFilter;->needsVerification()Z

    move-result v4

    add-int/2addr v9, v1

    goto :goto_60

    :cond_74
    add-int/2addr v6, v1

    goto :goto_4d

    :cond_76
    if-nez v4, :cond_7a

    goto/16 :goto_109

    :cond_7a
    move v6, v1

    move v4, v5

    move v7, v4

    :goto_7d
    if-ge v4, v3, :cond_109

    if-eqz v6, :cond_109

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    invoke-interface {v8}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getIntents()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    move v10, v5

    :goto_90
    if-ge v10, v9, :cond_fd

    if-eqz v6, :cond_fd

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    invoke-interface {v11}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/content/IntentFilter;->handlesWebUris(Z)Z

    move-result v12

    if-eqz v12, :cond_f2

    invoke-virtual {v11}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v12

    move v13, v5

    :goto_a9
    if-ge v13, v12, :cond_f2

    invoke-virtual {v11, v13}, Landroid/content/IntentFilter;->getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_bf

    move v15, v5

    :goto_ba
    move/from16 v16, v1

    move/from16 v1, p3

    goto :goto_cb

    :cond_bf
    iget-object v15, v0, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->mDomainMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v15, v14}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    iget-object v15, v0, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->mDomainMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v15}, Ljava/util/regex/Matcher;->matches()Z

    move-result v15

    goto :goto_ba

    :goto_cb
    if-ne v15, v1, :cond_eb

    invoke-static {v14}, Landroid/content/pm/verify/domain/DomainVerificationUtils;->estimatedByteSizeOf(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v6, v7

    const/high16 v7, 0x100000

    if-ge v6, v7, :cond_dd

    move/from16 v17, v16

    :goto_d8
    move-object/from16 v15, p4

    move-object/from16 v7, p5

    goto :goto_e0

    :cond_dd
    move/from16 v17, v5

    goto :goto_d8

    :goto_e0
    invoke-interface {v7, v15, v14}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_e7

    return-object v14

    :cond_e7
    move v7, v6

    move/from16 v6, v17

    goto :goto_ed

    :cond_eb
    move-object/from16 v15, p4

    :goto_ed
    add-int/lit8 v13, v13, 0x1

    move/from16 v1, v16

    goto :goto_a9

    :cond_f2
    move-object/from16 v15, p4

    move/from16 v16, v1

    move/from16 v1, p3

    add-int/lit8 v10, v10, 0x1

    move/from16 v1, v16

    goto :goto_90

    :cond_fd
    move-object/from16 v15, p4

    move/from16 v16, v1

    move/from16 v1, p3

    add-int/lit8 v4, v4, 0x1

    move/from16 v1, v16

    goto/16 :goto_7d

    :cond_109
    :goto_109
    const/4 v0, 0x0

    return-object v0
.end method

.method public final collectDomainsInternal(Lcom/android/server/pm/pkg/AndroidPackage;ZZLjava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 24

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    :goto_f
    if-ge v6, v3, :cond_9d

    if-eqz v7, :cond_9d

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    invoke-interface {v9}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getIntents()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_22
    if-ge v11, v10, :cond_97

    if-eqz v7, :cond_97

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    invoke-interface {v12}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v12

    if-eqz v1, :cond_39

    invoke-virtual {v12}, Landroid/content/IntentFilter;->getAutoVerify()Z

    move-result v13

    if-nez v13, :cond_39

    goto :goto_92

    :cond_39
    const-string/jumbo v13, "android.intent.category.DEFAULT"

    invoke-virtual {v12, v13}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_92

    invoke-virtual {v12, v1}, Landroid/content/IntentFilter;->handlesWebUris(Z)Z

    move-result v13

    if-nez v13, :cond_49

    goto :goto_92

    :cond_49
    invoke-virtual {v12}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v13

    const/4 v14, 0x0

    :goto_4e
    if-ge v14, v13, :cond_92

    if-eqz v7, :cond_92

    invoke-virtual {v12, v14}, Landroid/content/IntentFilter;->getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_64

    const/4 v4, 0x0

    :goto_61
    move/from16 v5, p3

    goto :goto_70

    :cond_64
    iget-object v4, v0, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->mDomainMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4, v15}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    iget-object v4, v0, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->mDomainMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    goto :goto_61

    :goto_70
    if-ne v4, v5, :cond_8f

    invoke-static {v15}, Landroid/content/pm/verify/domain/DomainVerificationUtils;->estimatedByteSizeOf(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v4, v8

    const/high16 v7, 0x100000

    if-ge v4, v7, :cond_82

    const/16 v17, 0x1

    :goto_7d
    move-object/from16 v7, p4

    move-object/from16 v8, p5

    goto :goto_85

    :cond_82
    const/16 v17, 0x0

    goto :goto_7d

    :goto_85
    invoke-interface {v8, v7, v15}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_8c

    return-object v15

    :cond_8c
    move v8, v4

    move/from16 v7, v17

    :cond_8f
    add-int/lit8 v14, v14, 0x1

    goto :goto_4e

    :cond_92
    :goto_92
    move/from16 v5, p3

    add-int/lit8 v11, v11, 0x1

    goto :goto_22

    :cond_97
    move/from16 v5, p3

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_f

    :cond_9d
    const/4 v0, 0x0

    return-object v0
.end method
