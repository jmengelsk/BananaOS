.class final Lcom/android/server/people/PeopleService$LocalService;
.super Lcom/android/server/people/PeopleServiceInternal;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mSessions:Ljava/util/Map;

.field public final synthetic this$0:Lcom/android/server/people/PeopleService;


# direct methods
.method public constructor <init>(Lcom/android/server/people/PeopleService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/people/PeopleService$LocalService;->this$0:Lcom/android/server/people/PeopleService;

    invoke-direct {p0}, Landroid/service/appprediction/IPredictionService$Stub;-><init>()V

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/PeopleService$LocalService;->mSessions:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final getBackupPayload(I)[B
    .registers 11

    iget-object p0, p0, Lcom/android/server/people/PeopleService$LocalService;->this$0:Lcom/android/server/people/PeopleService;

    invoke-virtual {p0}, Lcom/android/server/people/PeopleService;->getDataManager()Lcom/android/server/people/data/DataManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_e

    return-object p1

    :cond_e
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object p0, p0, Lcom/android/server/people/data/UserData;->mPackageDataMap:Ljava/util/Map;

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_24
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string/jumbo v3, "UserData"

    const/4 v4, -0x1

    if-eqz v2, :cond_70

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/people/data/PackageData;

    :try_start_34
    iget-object v5, v2, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v7, Ljava/io/DataOutputStream;

    invoke-direct {v7, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v8, Lcom/android/server/people/data/ConversationStore$$ExternalSyntheticLambda0;

    invoke-direct {v8, v7}, Lcom/android/server/people/data/ConversationStore$$ExternalSyntheticLambda0;-><init>(Ljava/io/DataOutputStream;)V

    invoke-virtual {v5, v8}, Lcom/android/server/people/data/ConversationStore;->forAllConversations(Ljava/util/function/Consumer;)V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_4b} :catch_69

    :try_start_4b
    invoke-virtual {v7, v4}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_53

    :try_start_4e
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    goto :goto_5c

    :catch_53
    move-exception v4

    const-string v5, "ConversationStore"

    const-string v6, "Failed to write conversation infos end token to backup payload."

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, p1

    :goto_5c
    array-length v5, v4

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->write([B)V

    iget-object v2, v2, Lcom/android/server/people/data/PackageData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_68} :catch_69

    goto :goto_24

    :catch_69
    move-exception p0

    const-string v0, "Failed to write conversations to backup payload."

    invoke-static {v3, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7e

    :cond_70
    :try_start_70
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_78

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    goto :goto_7e

    :catch_78
    move-exception p0

    const-string v0, "Failed to write conversations end token to backup payload."

    invoke-static {v3, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7e
    return-object p1
.end method

.method public getSessionInfo(Landroid/app/prediction/AppPredictionSessionId;)Lcom/android/server/people/SessionInfo;
    .registers 2

    iget-object p0, p0, Lcom/android/server/people/PeopleService$LocalService;->mSessions:Ljava/util/Map;

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/people/SessionInfo;

    return-object p0
.end method

.method public final notifyAppTargetEvent(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/AppTargetEvent;)V
    .registers 4

    new-instance v0, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p2}, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda3;-><init>(Landroid/app/prediction/AppTargetEvent;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/people/PeopleService$LocalService;->runForSession(Landroid/app/prediction/AppPredictionSessionId;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final notifyLaunchLocationShown(Landroid/app/prediction/AppPredictionSessionId;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    .registers 5

    new-instance v0, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p2, p3}, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/people/PeopleService$LocalService;->runForSession(Landroid/app/prediction/AppPredictionSessionId;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onCreatePredictionSession(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/people/PeopleService$LocalService;->mSessions:Ljava/util/Map;

    new-instance v1, Lcom/android/server/people/SessionInfo;

    iget-object v2, p0, Lcom/android/server/people/PeopleService$LocalService;->this$0:Lcom/android/server/people/PeopleService;

    invoke-virtual {v2}, Lcom/android/server/people/PeopleService;->getDataManager()Lcom/android/server/people/data/DataManager;

    move-result-object v2

    invoke-virtual {p2}, Landroid/app/prediction/AppPredictionSessionId;->getUserId()I

    move-result v3

    iget-object p0, p0, Lcom/android/server/people/PeopleService$LocalService;->this$0:Lcom/android/server/people/PeopleService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p1, v2, v3, p0}, Lcom/android/server/people/SessionInfo;-><init>(Landroid/app/prediction/AppPredictionContext;Lcom/android/server/people/data/DataManager;ILandroid/content/Context;)V

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onDestroyPredictionSession(Landroid/app/prediction/AppPredictionSessionId;)V
    .registers 4

    new-instance v0, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/people/PeopleService$LocalService;Ljava/lang/Object;I)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/people/PeopleService$LocalService;->runForSession(Landroid/app/prediction/AppPredictionSessionId;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final pruneDataForUser(ILandroid/os/CancellationSignal;)V
    .registers 8

    iget-object p0, p0, Lcom/android/server/people/PeopleService$LocalService;->this$0:Lcom/android/server/people/PeopleService;

    invoke-virtual {p0}, Lcom/android/server/people/PeopleService;->getDataManager()Lcom/android/server/people/data/DataManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    move-result-object v0

    if-eqz v0, :cond_4d

    invoke-virtual {p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_4d

    :cond_13
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iget-object v2, p0, Lcom/android/server/people/data/DataManager;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    new-instance v3, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda11;

    invoke-direct {v3, v1}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda11;-><init>(Ljava/util/Set;)V

    iget v4, v0, Lcom/android/server/people/data/UserData;->mUserId:I

    invoke-virtual {v2, v4, v3}, Landroid/content/pm/PackageManagerInternal;->forEachInstalledPackage(ILjava/util/function/Consumer;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda12;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1, v2}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda12;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Lcom/android/server/people/data/UserData;->forAllPackages(Ljava/util/function/Consumer;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_37
    if-ge v3, v1, :cond_45

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/android/server/people/data/UserData;->deletePackageData(Ljava/lang/String;)V

    goto :goto_37

    :cond_45
    new-instance v1, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/people/data/DataManager;Landroid/os/CancellationSignal;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/people/data/UserData;->forAllPackages(Ljava/util/function/Consumer;)V

    :cond_4d
    :goto_4d
    return-void
.end method

.method public final registerPredictionUpdates(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V
    .registers 5

    new-instance v0, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda1;-><init>(Landroid/app/prediction/IPredictionCallback;I)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/people/PeopleService$LocalService;->runForSession(Landroid/app/prediction/AppPredictionSessionId;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final requestPredictionUpdate(Landroid/app/prediction/AppPredictionSessionId;)V
    .registers 3

    new-instance v0, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/people/PeopleService$LocalService;->runForSession(Landroid/app/prediction/AppPredictionSessionId;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final requestServiceFeatures(Landroid/app/prediction/AppPredictionSessionId;Landroid/os/IRemoteCallback;)V
    .registers 3

    return-void
.end method

.method public final restore(I[B)V
    .registers 8

    iget-object p0, p0, Lcom/android/server/people/PeopleService$LocalService;->this$0:Lcom/android/server/people/PeopleService;

    invoke-virtual {p0}, Lcom/android/server/people/PeopleService;->getDataManager()Lcom/android/server/people/data/DataManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    move-result-object p0

    if-nez p0, :cond_d

    goto :goto_76

    :cond_d
    new-instance p1, Ljava/io/DataInputStream;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_17
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result p2

    :goto_1b
    const/4 v0, -0x1

    if-eq p2, v0, :cond_76

    new-array v1, p2, [B

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, p2}, Ljava/io/DataInputStream;->readFully([BII)V

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p2

    iget-object v3, p0, Lcom/android/server/people/data/UserData;->mPackageDataMap:Ljava/util/Map;

    new-instance v4, Lcom/android/server/people/data/UserData$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, p2}, Lcom/android/server/people/data/UserData$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/people/data/UserData;Ljava/lang/String;)V

    invoke-interface {v3, p2, v4}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/people/data/PackageData;

    iget-object p2, p2, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_44} :catch_6d

    :try_start_44
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    :goto_48
    if-eq v1, v0, :cond_68

    new-array v4, v1, [B

    invoke-virtual {v3, v4, v2, v1}, Ljava/io/DataInputStream;->readFully([BII)V

    invoke-static {v4}, Lcom/android/server/people/data/ConversationInfo;->readFromBackupPayload([B)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v1

    if-eqz v1, :cond_5b

    invoke-virtual {p2, v1}, Lcom/android/server/people/data/ConversationStore;->updateConversationsInMemory(Lcom/android/server/people/data/ConversationInfo;)V

    invoke-virtual {p2}, Lcom/android/server/people/data/ConversationStore;->scheduleUpdateConversationsOnDisk()V

    :cond_5b
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v1
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_5f} :catch_60

    goto :goto_48

    :catch_60
    move-exception p2

    :try_start_61
    const-string v0, "ConversationStore"

    const-string v1, "Failed to read conversation info from payload."

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_68
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result p2
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_6c} :catch_6d

    goto :goto_1b

    :catch_6d
    move-exception p0

    const-string/jumbo p1, "UserData"

    const-string p2, "Failed to restore conversations from backup payload."

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_76
    :goto_76
    return-void
.end method

.method public final runForSession(Landroid/app/prediction/AppPredictionSessionId;Ljava/util/function/Consumer;)V
    .registers 3

    iget-object p0, p0, Lcom/android/server/people/PeopleService$LocalService;->mSessions:Ljava/util/Map;

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/people/SessionInfo;

    if-nez p0, :cond_21

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Failed to find the session: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "PeopleService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_21
    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final sortAppTargets(Landroid/app/prediction/AppPredictionSessionId;Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;)V
    .registers 5

    new-instance v0, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/people/PeopleService$LocalService;Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/people/PeopleService$LocalService;->runForSession(Landroid/app/prediction/AppPredictionSessionId;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final unregisterPredictionUpdates(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V
    .registers 5

    new-instance v0, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda1;-><init>(Landroid/app/prediction/IPredictionCallback;I)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/people/PeopleService$LocalService;->runForSession(Landroid/app/prediction/AppPredictionSessionId;Ljava/util/function/Consumer;)V

    return-void
.end method
