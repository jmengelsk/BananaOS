.class public Lcom/android/server/sepunion/SemUnionMainServiceImpl;
.super Lcom/samsung/android/sepunion/IUnionManager$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final sConstructorMap:Ljava/util/HashMap;

.field public static final sDumpInformationMap:Ljava/util/HashMap;

.field public static final sLock:Ljava/lang/Object;

.field public static final sPendingSepUnionServiceCreators:Ljava/util/Map;

.field public static final sSemSystemServiceMap:Ljava/util/HashMap;

.field public static final sUnionIbinderMap:Ljava/util/HashMap;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mIsBootCompleted:Z

.field public final mSemUnionManagerLocal:Lcom/android/server/sepunion/SemUnionMainServiceImpl$1;


# direct methods
.method public static -$$Nest$maddSepUnionServiceMapInternal(Lcom/android/server/sepunion/SemUnionMainServiceImpl;Ljava/lang/String;Landroid/content/Context;)V
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p0, "SemUnionMainServiceImpl"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "addSepUnionServiceMapInternal : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_1b
    sget-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sConstructorMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;
    :try_end_29
    .catchall {:try_start_1b .. :try_end_29} :catchall_4b

    :try_start_29
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_4f

    check-cast p2, Lcom/android/server/sepunion/AbsSemSystemService;

    sget-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sUnionIbinderMap:Ljava/util/HashMap;

    move-object v1, p2

    check-cast v1, Landroid/os/IBinder;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p2, p1}, Lcom/android/server/sepunion/AbsSemSystemService;->onCreate(Landroid/os/Bundle;)V

    goto :goto_5c

    :catchall_4b
    move-exception p1

    goto :goto_5e

    :catch_4d
    move-exception p1

    goto :goto_59

    :cond_4f
    const-string/jumbo p1, "SemUnionMainServiceImpl"

    const-string/jumbo p2, "addSepUnionServiceMapInternal : obj is NULL"

    invoke-static {p1, p2}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_29 .. :try_end_58} :catch_4d
    .catch Ljava/lang/IllegalAccessException; {:try_start_29 .. :try_end_58} :catch_4d
    .catch Ljava/lang/InstantiationException; {:try_start_29 .. :try_end_58} :catch_4d
    .catchall {:try_start_29 .. :try_end_58} :catchall_4b

    goto :goto_5c

    :goto_59
    :try_start_59
    invoke-virtual {p1}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    :cond_5c
    :goto_5c
    monitor-exit p0

    return-void

    :goto_5e
    monitor-exit p0
    :try_end_5f
    .catchall {:try_start_59 .. :try_end_5f} :catchall_4b

    throw p1
.end method

.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sConstructorMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sUnionIbinderMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sDumpInformationMap:Ljava/util/HashMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sPendingSepUnionServiceCreators:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9

    invoke-direct {p0}, Lcom/samsung/android/sepunion/IUnionManager$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->mIsBootCompleted:Z

    new-instance v1, Lcom/android/server/sepunion/SemUnionMainServiceImpl$1;

    invoke-direct {v1, p0}, Lcom/android/server/sepunion/SemUnionMainServiceImpl$1;-><init>(Lcom/android/server/sepunion/SemUnionMainServiceImpl;)V

    iput-object v1, p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->mSemUnionManagerLocal:Lcom/android/server/sepunion/SemUnionMainServiceImpl$1;

    iput-object p1, p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sget-object p1, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1b
    sget-object v1, Lcom/samsung/android/sepunion/UnionConstants;->sClassPathForService:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_25
    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_37
    .catchall {:try_start_1b .. :try_end_37} :catchall_65

    const/4 v4, 0x0

    :try_start_38
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v0

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3
    :try_end_47
    .catch Ljava/lang/NoSuchMethodException; {:try_start_38 .. :try_end_47} :catch_48
    .catch Ljava/lang/ClassNotFoundException; {:try_start_38 .. :try_end_47} :catch_48
    .catchall {:try_start_38 .. :try_end_47} :catchall_65

    goto :goto_4d

    :catch_48
    move-exception v3

    :try_start_49
    invoke-virtual {v3}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    move-object v3, v4

    :goto_4d
    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v5, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sConstructorMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sUnionIbinderMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_25

    :catchall_65
    move-exception p0

    goto :goto_c4

    :cond_67
    monitor-exit p1
    :try_end_68
    .catchall {:try_start_49 .. :try_end_68} :catchall_65

    sget-object p1, Lcom/samsung/android/sepunion/UnionConstants;->sServiceStartType:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_72
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_aa

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_96

    iget-object v0, p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->mSemUnionManagerLocal:Lcom/android/server/sepunion/SemUnionMainServiceImpl$1;

    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/SemUnionMainServiceImpl$1;->createSemSystemService(Ljava/lang/String;)V

    goto :goto_72

    :cond_96
    sget-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_99
    sget-object v2, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sPendingSepUnionServiceCreators:Ljava/util/Map;

    new-instance v3, Lcom/android/server/sepunion/SemUnionMainServiceImpl$SepUnionServiceCreator;

    invoke-direct {v3, p0, v1}, Lcom/android/server/sepunion/SemUnionMainServiceImpl$SepUnionServiceCreator;-><init>(Lcom/android/server/sepunion/SemUnionMainServiceImpl;Ljava/lang/String;)V

    check-cast v2, Landroid/util/ArrayMap;

    invoke-virtual {v2, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    goto :goto_72

    :catchall_a7
    move-exception p0

    monitor-exit v0
    :try_end_a9
    .catchall {:try_start_99 .. :try_end_a9} :catchall_a7

    throw p0

    :cond_aa
    new-instance p0, Ljava/io/File;

    const-string p1, "/data/log/sepunion/"

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_c3

    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result p1

    if-eqz p1, :cond_c3

    const/16 p1, 0x1ff

    const/4 v0, -0x1

    invoke-static {p0, p1, v0, v0}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    :cond_c3
    return-void

    :goto_c4
    :try_start_c4
    monitor-exit p1
    :try_end_c5
    .catchall {:try_start_c4 .. :try_end_c5} :catchall_65

    throw p0
.end method

.method public static dumpFromFile(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_21

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "This log file does not exist : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "SemUnionMainServiceImpl"

    invoke-static {p1, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_21
    const-string p2, "\n##### DUMP OF "

    const-string v1, " #####\n##### (dumpsys sepunion "

    const-string v2, ") #####\n"

    invoke-static {p2, p1, v1, p1, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    :try_start_2f
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_34
    .catch Ljava/io/FileNotFoundException; {:try_start_2f .. :try_end_34} :catch_8d
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_34} :catch_89
    .catchall {:try_start_2f .. :try_end_34} :catchall_85

    :try_start_34
    new-instance v0, Ljava/io/InputStreamReader;

    const-string/jumbo v1, "UTF-8"

    invoke-direct {v0, p2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/io/FileNotFoundException; {:try_start_34 .. :try_end_3c} :catch_82
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_3c} :catch_7f
    .catchall {:try_start_34 .. :try_end_3c} :catchall_7c

    :try_start_3c
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_41
    .catch Ljava/io/FileNotFoundException; {:try_start_3c .. :try_end_41} :catch_7a
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_41} :catch_78
    .catchall {:try_start_3c .. :try_end_41} :catchall_76

    :try_start_41
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_47
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_65

    const/16 v4, 0x1f4

    if-gt v2, v4, :cond_65

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    :catchall_5c
    move-exception p0

    move-object p1, v1

    goto :goto_a3

    :catch_5f
    move-exception p0

    move-object p1, v1

    goto :goto_91

    :catch_62
    move-exception p0

    move-object p1, v1

    goto :goto_9e

    :cond_65
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_6c
    .catch Ljava/io/FileNotFoundException; {:try_start_41 .. :try_end_6c} :catch_62
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_6c} :catch_5f
    .catchall {:try_start_41 .. :try_end_6c} :catchall_5c

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_76
    move-exception p0

    goto :goto_a3

    :catch_78
    move-exception p0

    goto :goto_91

    :catch_7a
    move-exception p0

    goto :goto_9e

    :catchall_7c
    move-exception p0

    move-object v0, p1

    goto :goto_a3

    :catch_7f
    move-exception p0

    move-object v0, p1

    goto :goto_91

    :catch_82
    move-exception p0

    move-object v0, p1

    goto :goto_9e

    :catchall_85
    move-exception p0

    move-object p2, p1

    move-object v0, p2

    goto :goto_a3

    :catch_89
    move-exception p0

    move-object p2, p1

    move-object v0, p2

    goto :goto_91

    :catch_8d
    move-exception p0

    move-object p2, p1

    move-object v0, p2

    goto :goto_9e

    :goto_91
    :try_start_91
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_94
    .catchall {:try_start_91 .. :try_end_94} :catchall_76

    :goto_94
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_a2

    :goto_9e
    :try_start_9e
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_a1
    .catchall {:try_start_9e .. :try_end_a1} :catchall_76

    goto :goto_94

    :goto_a2
    return-void

    :goto_a3
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p0
.end method

.method public static dumpHistoryLog(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const-string v0, "\n##### DUMP OF "

    const-string v1, " #####\n##### (dumpsys sepunion "

    const-string v2, ") #####\n"

    invoke-static {v0, p3, v1, p3, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {p3, p0, p1, p2}, Lcom/samsung/android/sepunion/Log;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public static dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    const-string v0, "\n##### SEP UNION Main SERVICE #####\n##### (dumpsys sepunion) #####\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->dumpServiceList(Ljava/io/PrintWriter;)V

    sget-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    sget-object v1, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/AbsSemSystemService;

    if-eqz v2, :cond_15

    invoke-interface {v2, p0, p1, p2}, Lcom/android/server/sepunion/AbsSemSystemService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_15

    :catchall_2d
    move-exception p0

    goto :goto_5d

    :cond_2f
    sget-object v1, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sDumpInformationMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_57

    invoke-static {p1, v3, v2}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->dumpFromFile(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_39

    :cond_57
    invoke-static {p0, p1, p2, v3}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->dumpHistoryLog(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_39

    :cond_5b
    monitor-exit v0

    return-void

    :goto_5d
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_b .. :try_end_5e} :catchall_2d

    throw p0
.end method

.method public static dumpServiceList(Ljava/io/PrintWriter;)V
    .registers 8

    const-string v0, ""

    const-string v1, ""

    sget-object v2, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_7
    sget-object v3, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :cond_12
    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_43

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_12

    add-int/lit8 v4, v4, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :catchall_41
    move-exception p0

    goto :goto_a8

    :cond_43
    sget-object v3, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sPendingSepUnionServiceCreators:Ljava/util/Map;

    check-cast v3, Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4f
    :goto_4f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_4f

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4f

    :cond_7c
    monitor-exit v2
    :try_end_7d
    .catchall {:try_start_7 .. :try_end_7d} :catchall_41

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Number of SEP Union service = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "SEP Union service list(activated) : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "SEP Union service list(pending) : "

    invoke-static {p0, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_a8
    :try_start_a8
    monitor-exit v2
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_41

    throw p0
.end method

.method public static getSemSystemService()Lcom/android/server/sepunion/AbsSemSystemService;
    .registers 4

    const-string/jumbo v0, "plugin"

    sget-object v1, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    sget-object v2, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sepunion/AbsSemSystemService;

    if-eqz v0, :cond_1a

    monitor-exit v1

    return-object v0

    :catchall_18
    move-exception v0

    goto :goto_1d

    :cond_1a
    monitor-exit v1

    const/4 v0, 0x0

    return-object v0

    :goto_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_18

    throw v0
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    iget-object p0, p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "SemUnionMainServiceImpl"

    invoke-static {p0, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p0

    if-nez p0, :cond_c

    return-void

    :cond_c
    array-length p0, p3

    if-gtz p0, :cond_13

    invoke-static {p1, p2, p3}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void

    :cond_13
    sget-object p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_16
    sget-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v3, p3, v2

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_29

    move v4, v2

    move v1, v3

    goto :goto_3c

    :cond_29
    sget-object v1, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sDumpInformationMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    aget-object v4, p3, v2

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    move v1, v2

    move v4, v3

    goto :goto_3c

    :cond_3a
    move v1, v2

    move v4, v1

    :goto_3c
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_16 .. :try_end_3d} :catchall_99

    if-eqz v1, :cond_62

    monitor-enter p0

    :try_start_40
    aget-object v1, p3, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sepunion/AbsSemSystemService;

    if-eqz v0, :cond_5e

    array-length v1, p3

    if-ne v1, v3, :cond_54

    const/4 p3, 0x0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/sepunion/AbsSemSystemService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_5e

    :catchall_52
    move-exception p1

    goto :goto_60

    :cond_54
    array-length v1, p3

    invoke-static {p3, v3, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/sepunion/AbsSemSystemService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_5e
    :goto_5e
    monitor-exit p0

    return-void

    :goto_60
    monitor-exit p0
    :try_end_61
    .catchall {:try_start_40 .. :try_end_61} :catchall_52

    throw p1

    :cond_62
    if-eqz v4, :cond_86

    monitor-enter p0

    :try_start_65
    sget-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sDumpInformationMap:Ljava/util/HashMap;

    aget-object v1, p3, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7d

    aget-object p1, p3, v2

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-static {p2, p1, p3}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->dumpFromFile(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_82

    :catchall_7b
    move-exception p1

    goto :goto_84

    :cond_7d
    aget-object v0, p3, v2

    invoke-static {p1, p2, p3, v0}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->dumpHistoryLog(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;)V

    :goto_82
    monitor-exit p0

    return-void

    :goto_84
    monitor-exit p0
    :try_end_85
    .catchall {:try_start_65 .. :try_end_85} :catchall_7b

    throw p1

    :cond_86
    aget-object p0, p3, v2

    const-string/jumbo v0, "servicelist"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_95

    invoke-static {p2}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->dumpServiceList(Ljava/io/PrintWriter;)V

    return-void

    :cond_95
    invoke-static {p1, p2, p3}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void

    :catchall_99
    move-exception p1

    :try_start_9a
    monitor-exit p0
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_99

    throw p1
.end method

.method public final getSemSystemService(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/IBinder;
    .registers 6

    const-string/jumbo p2, "getSemSystemService - "

    const-string/jumbo v0, "SemUnionMainServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getSemSystemService - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1b
    sget-object v1, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sUnionIbinderMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    if-eqz v1, :cond_29

    monitor-exit v0

    return-object v1

    :catchall_27
    move-exception p0

    goto :goto_59

    :cond_29
    iget-boolean v1, p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->mIsBootCompleted:Z

    if-nez v1, :cond_39

    const-string/jumbo p0, "SemUnionMainServiceImpl"

    const-string/jumbo p1, "getSemSystemService : boot is not completed"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :cond_39
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->getSepUnionService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    const-string/jumbo v1, "SemUnionMainServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-object p0

    :goto_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_1b .. :try_end_5a} :catchall_27

    throw p0
.end method

.method public final getSepUnionService(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 7

    sget-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sPendingSepUnionServiceCreators:Ljava/util/Map;

    move-object v2, v1

    check-cast v2, Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/SemUnionMainServiceImpl$SepUnionServiceCreator;

    if-nez v2, :cond_15

    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :catchall_13
    move-exception p0

    goto :goto_39

    :cond_15
    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_13

    :try_start_1e
    iget-object p0, p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->mContext:Landroid/content/Context;

    iget-object p1, v2, Lcom/android/server/sepunion/SemUnionMainServiceImpl$SepUnionServiceCreator;->this$0:Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    iget-object v1, v2, Lcom/android/server/sepunion/SemUnionMainServiceImpl$SepUnionServiceCreator;->mName:Ljava/lang/String;

    invoke-static {p1, v1, p0}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->-$$Nest$maddSepUnionServiceMapInternal(Lcom/android/server/sepunion/SemUnionMainServiceImpl;Ljava/lang/String;Landroid/content/Context;)V

    sget-object p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sUnionIbinderMap:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;
    :try_end_2f
    .catchall {:try_start_1e .. :try_end_2f} :catchall_34

    :try_start_2f
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    return-object p0

    :catchall_34
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :goto_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_2f .. :try_end_3a} :catchall_13

    throw p0
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 17

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    const/16 v2, 0x7d0

    if-ne v0, v2, :cond_e

    :cond_b
    move-object/from16 v8, p6

    goto :goto_1d

    :cond_e
    const/4 p0, -0x1

    move-object/from16 v8, p6

    invoke-virtual {v8, p0, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "Shell commands are only callable by ADB"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_1d
    sget-object v9, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_20
    array-length v0, p4

    if-lez v0, :cond_4c

    sget-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    const/4 v2, 0x0

    aget-object v2, p4, v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/sepunion/AbsSemSystemService;

    if-eqz v2, :cond_4c

    array-length p0, p4

    const/4 v0, 0x1

    if-ne p0, v0, :cond_3b

    :goto_35
    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p5

    move-object v6, v1

    goto :goto_44

    :cond_3b
    array-length p0, p4

    invoke-static {p4, v0, p0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, [Ljava/lang/String;

    goto :goto_35

    :goto_44
    invoke-interface/range {v2 .. v8}, Lcom/android/server/sepunion/AbsSemSystemService;->onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V

    monitor-exit v9

    return-void

    :catchall_49
    move-exception v0

    move-object p0, v0

    goto :goto_51

    :cond_4c
    monitor-exit v9
    :try_end_4d
    .catchall {:try_start_20 .. :try_end_4d} :catchall_49

    invoke-super/range {p0 .. p6}, Lcom/samsung/android/sepunion/IUnionManager$Stub;->onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V

    return-void

    :goto_51
    :try_start_51
    monitor-exit v9
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_49

    throw p0
.end method

.method public final setDumpEnabled(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object p0, p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v1, 0x3e8

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result p0

    if-nez p0, :cond_33

    const/16 p0, 0x7d0

    if-eq v0, p0, :cond_33

    sget-object p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_19
    sget-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sDumpInformationMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2c

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    goto :goto_2c

    :catchall_2a
    move-exception p1

    goto :goto_31

    :cond_2c
    :goto_2c
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2f
    monitor-exit p0

    return-void

    :goto_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_19 .. :try_end_32} :catchall_2a

    throw p1

    :cond_33
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "Permission denied: setDumpEnabled callingUid="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", you need system uid of to be signed with the system certificate."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "SemUnionMainServiceImpl"

    invoke-static {p1, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
