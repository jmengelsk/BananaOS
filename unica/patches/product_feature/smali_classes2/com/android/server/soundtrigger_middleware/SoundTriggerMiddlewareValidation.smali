.class public final Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;
.implements Lcom/android/server/soundtrigger_middleware/Dumpable;


# instance fields
.field public final mDelegate:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl;

.field public mModules:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->mDelegate:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl;

    return-void
.end method

.method public static handleException(Ljava/lang/Exception;)V
    .registers 3

    instance-of v0, p0, Lcom/android/server/soundtrigger_middleware/RecoverableException;

    if-eqz v0, :cond_13

    new-instance v0, Landroid/os/ServiceSpecificException;

    move-object v1, p0

    check-cast v1, Lcom/android/server/soundtrigger_middleware/RecoverableException;

    iget v1, v1, Lcom/android/server/soundtrigger_middleware/RecoverableException;->errorCode:I

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_13
    const-string/jumbo v0, "SoundTriggerMiddlewareValidation"

    const-string/jumbo v1, "Unexpected exception"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Landroid/os/ServiceSpecificException;

    const/4 v1, 0x5

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final attach(ILandroid/media/soundtrigger_middleware/ISoundTriggerCallback;Z)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;
    .registers 7

    const-string v0, "Invalid handle: "

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_d
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->mModules:Ljava/util/Map;

    if-eqz v1, :cond_49

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_2f

    if-eqz v1, :cond_37

    :try_start_1d
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;ILandroid/media/soundtrigger_middleware/ISoundTriggerCallback;)V

    iget-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->mDelegate:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl;

    iget-object v1, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mCallbackWrapper:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;

    invoke-virtual {p2, p1, v1, p3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl;->attach(ILandroid/media/soundtrigger_middleware/ISoundTriggerCallback;Z)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->attach(Landroid/media/soundtrigger_middleware/ISoundTriggerModule;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2d} :catch_31
    .catchall {:try_start_1d .. :try_end_2d} :catchall_2f

    :try_start_2d
    monitor-exit p0

    return-object v0

    :catchall_2f
    move-exception p1

    goto :goto_51

    :catch_31
    move-exception p1

    invoke-static {p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->handleException(Ljava/lang/Exception;)V

    const/4 p1, 0x0

    throw p1

    :cond_37
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_49
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Client must call listModules() prior to attaching."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_51
    monitor-exit p0
    :try_end_52
    .catchall {:try_start_2d .. :try_end_52} :catchall_2f

    throw p1
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->mModules:Ljava/util/Map;

    if-eqz v0, :cond_5c

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->mModules:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleState;

    const-string v3, "========================================="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v3, "Module %d\n%s\n"

    iget-object v4, v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleState;->properties:Landroid/media/soundtrigger/Properties;

    invoke-static {v4}, Lcom/android/server/soundtrigger_middleware/ObjectPrinter;->print(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v1, "========================================="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleState;->sessions:Ljava/util/Set;

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    invoke-virtual {v2, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->dump(Ljava/io/PrintWriter;)V

    goto :goto_4a

    :catchall_5a
    move-exception p1

    goto :goto_72

    :cond_5c
    const-string/jumbo v0, "Modules have not yet been enumerated."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_62
    monitor-exit p0
    :try_end_63
    .catchall {:try_start_1 .. :try_end_63} :catchall_5a

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->mDelegate:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl;

    instance-of v0, p0, Lcom/android/server/soundtrigger_middleware/Dumpable;

    if-eqz v0, :cond_71

    check-cast p0, Lcom/android/server/soundtrigger_middleware/Dumpable;

    invoke-interface {p0, p1}, Lcom/android/server/soundtrigger_middleware/Dumpable;->dump(Ljava/io/PrintWriter;)V

    :cond_71
    return-void

    :goto_72
    :try_start_72
    monitor-exit p0
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_5a

    throw p1
.end method

.method public final listModules()[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
    .registers 9

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->mDelegate:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl;

    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl;->listModules()[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->mModules:Ljava/util/Map;

    const/4 v2, 0x0

    if-nez v1, :cond_3d

    new-instance v1, Ljava/util/HashMap;

    array-length v3, v0

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->mModules:Ljava/util/Map;

    array-length v1, v0

    :goto_15
    if-ge v2, v1, :cond_7b

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->mModules:Ljava/util/Map;

    iget v5, v3, Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;->handle:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleState;

    iget-object v3, v3, Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;->properties:Landroid/media/soundtrigger/Properties;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v7, v6, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleState;->sessions:Ljava/util/Set;

    iput-object v3, v6, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleState;->properties:Landroid/media/soundtrigger/Properties;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :catchall_39
    move-exception v0

    goto :goto_8b

    :catch_3b
    move-exception v0

    goto :goto_86

    :cond_3d
    array-length v3, v0

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-ne v3, v1, :cond_7d

    array-length v1, v0

    :goto_47
    if-ge v2, v1, :cond_7b

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->mModules:Ljava/util/Map;

    iget v5, v3, Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;->handle:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_72

    iget-object v4, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->mModules:Ljava/util/Map;

    iget v5, v3, Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;->handle:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleState;

    iget-object v3, v3, Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;->properties:Landroid/media/soundtrigger/Properties;

    iput-object v3, v4, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleState;->properties:Landroid/media/soundtrigger/Properties;

    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    :cond_72
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "listModules must always return the same result."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7b} :catch_3b
    .catchall {:try_start_1 .. :try_end_7b} :catchall_39

    :cond_7b
    :try_start_7b
    monitor-exit p0
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_39

    return-object v0

    :cond_7d
    :try_start_7d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "listModules must always return the same result."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_86} :catch_3b
    .catchall {:try_start_7d .. :try_end_86} :catchall_39

    :goto_86
    :try_start_86
    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->handleException(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    throw v0

    :goto_8b
    monitor-exit p0
    :try_end_8c
    .catchall {:try_start_86 .. :try_end_8c} :catchall_39

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->mDelegate:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
