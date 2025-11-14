.class public Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mConfigDirs:Ljava/util/ArrayList;

.field public final mPmProxy:Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$1;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy;->mPmProxy:Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;

    const-string p1, "/system/etc/omc-default-permissions"

    invoke-static {p1}, Landroid/hardware/usb/V1_1/PortStatus_1_1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "mdc.sys.omc_etcpath"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "omc-default-permissions"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2f
    iput-object p1, p0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy;->mConfigDirs:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy;->mPmProxy:Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;

    new-instance p1, Ljava/util/ArrayList;

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy;->mConfigDirs:Ljava/util/ArrayList;

    return-void
.end method

.method public static readDefaultPermissionPackage(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/ArrayMap;)V
    .registers 11

    const-string/jumbo v0, "OmcPermissionPolicy"

    const-string/jumbo v1, "name"

    const-string/jumbo v2, "Read permission for package <"

    const/4 v3, 0x0

    :try_start_a
    invoke-interface {p0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$DefaultPermission;

    invoke-direct {v2}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$DefaultPermission;-><init>()V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    :cond_2b
    :goto_2b
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_a4

    const/4 v7, 0x3

    if-ne v6, v7, :cond_3e

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v5, :cond_a4

    goto :goto_3e

    :catch_3c
    move-exception p0

    goto :goto_a8

    :cond_3e
    :goto_3e
    if-eq v6, v7, :cond_2b

    const/4 v7, 0x4

    if-ne v6, v7, :cond_44

    goto :goto_2b

    :cond_44
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "permission"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_72

    invoke-interface {p0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "systemfixed"

    invoke-interface {p0, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6a

    iget-object v7, v2, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$DefaultPermission;->mFixedGrantedPermission:Ljava/util/Set;

    check-cast v7, Landroid/util/ArraySet;

    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :cond_6a
    iget-object v7, v2, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$DefaultPermission;->mNonFixedGrantedPermission:Ljava/util/Set;

    check-cast v7, Landroid/util/ArraySet;

    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :cond_72
    const-string/jumbo v7, "revoke-permission"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_87

    invoke-interface {p0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v2, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$DefaultPermission;->mRevokedPermission:Ljava/util/Set;

    check-cast v7, Landroid/util/ArraySet;

    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :cond_87
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown element under <defaultgrant - package>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2b

    :cond_a4
    invoke-virtual {p1, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a7} :catch_3c

    return-void

    :goto_a8
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Exception "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final grantOrRevokePermissions(Ljava/lang/String;Z[I)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    new-instance v3, Ljava/io/File;

    move-object/from16 v4, p1

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    const-string/jumbo v5, "OmcPermissionPolicy"

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v9, v0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy;->mPmProxy:Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;

    if-nez v4, :cond_1f

    goto/16 :goto_179

    :cond_1f
    :try_start_1f
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_24} :catch_150

    :try_start_24
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v4, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :goto_31
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    const/4 v11, 0x2

    if-eq v10, v11, :cond_3b

    if-eq v10, v6, :cond_3b

    goto :goto_31

    :cond_3b
    if-ne v10, v11, :cond_152

    const-string/jumbo v10, "ro.boot.activatedid"

    move-object v11, v9

    check-cast v11, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$1;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "persist.omc.sales_code"

    move-object v12, v9

    check-cast v12, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$1;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_70

    const-string/jumbo v11, "ro.csc.sales_code"

    move-object v12, v9

    check-cast v12, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$1;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_70

    :goto_6b
    move-object v3, v0

    goto/16 :goto_15b

    :catchall_6e
    move-exception v0

    goto :goto_6b

    :cond_70
    :goto_70
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Current sales code : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", aid: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    :cond_90
    :goto_90
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    if-eq v13, v6, :cond_14c

    const/4 v14, 0x3

    if-ne v13, v14, :cond_9f

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v15

    if-le v15, v12, :cond_14c

    :cond_9f
    if-eq v13, v14, :cond_90

    const/4 v14, 0x4

    if-ne v13, v14, :cond_a5

    goto :goto_90

    :cond_a5
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "sales-code"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14
    :try_end_b0
    .catchall {:try_start_24 .. :try_end_b0} :catchall_6e

    const-string/jumbo v15, "firstboot"

    const-string/jumbo v8, "code"

    if-eqz v14, :cond_e4

    :try_start_b8
    const-string/jumbo v13, "csc"

    invoke-interface {v3, v7, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_c5

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    :cond_c5
    if-eqz v13, :cond_d0

    invoke-static {v13, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_ce

    goto :goto_d0

    :cond_ce
    const/4 v8, 0x0

    goto :goto_d1

    :cond_d0
    :goto_d0
    move v8, v6

    :goto_d1
    invoke-interface {v3, v7, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    if-eqz p2, :cond_de

    if-nez v13, :cond_de

    move v8, v6

    :cond_de
    if-eqz v8, :cond_90

    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_90

    :cond_e4
    const-string/jumbo v14, "activated-id"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_110

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_fc

    invoke-static {v8, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_fa

    goto :goto_fc

    :cond_fa
    const/4 v8, 0x0

    goto :goto_fd

    :cond_fc
    :goto_fc
    move v8, v6

    :goto_fd
    invoke-interface {v3, v7, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    if-eqz p2, :cond_10a

    if-nez v13, :cond_10a

    move v8, v6

    :cond_10a
    if-eqz v8, :cond_90

    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_90

    :cond_110
    const-string/jumbo v8, "package"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11e

    invoke-static {v3, v2}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy;->readDefaultPermissionPackage(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/ArrayMap;)V

    goto/16 :goto_90

    :cond_11e
    if-eqz p2, :cond_12e

    const-string/jumbo v8, "exception"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12e

    invoke-virtual {v0, v3, v2}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy;->readDefaultExceptionsForPackage(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/ArrayMap;)V

    goto/16 :goto_90

    :cond_12e
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Unknown element under <defaultgrant>: "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_14a
    .catchall {:try_start_b8 .. :try_end_14a} :catchall_6e

    goto/16 :goto_90

    :cond_14c
    :try_start_14c
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_14f
    .catch Ljava/lang/Exception; {:try_start_14c .. :try_end_14f} :catch_150

    goto :goto_179

    :catch_150
    move-exception v0

    goto :goto_164

    :cond_152
    :try_start_152
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v3, "No start tag found in packages file"

    invoke-direct {v0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_15b
    .catchall {:try_start_152 .. :try_end_15b} :catchall_6e

    :goto_15b
    :try_start_15b
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_15e
    .catchall {:try_start_15b .. :try_end_15e} :catchall_15f

    goto :goto_163

    :catchall_15f
    move-exception v0

    :try_start_160
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_163
    throw v3
    :try_end_164
    .catch Ljava/lang/Exception; {:try_start_160 .. :try_end_164} :catch_150

    :goto_164
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_179
    invoke-virtual {v2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_181
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_307

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$DefaultPermission;

    if-eqz v12, :cond_303

    if-nez v2, :cond_19f

    goto :goto_181

    :cond_19f
    move-object v3, v9

    check-cast v3, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$1;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1a5
    iget-object v4, v3, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const v8, 0x2800b000

    invoke-virtual {v4, v12, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4
    :try_end_1b2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1a5 .. :try_end_1b2} :catch_1b3

    goto :goto_1b4

    :catch_1b3
    move-object v4, v7

    :goto_1b4
    if-eqz v4, :cond_303

    iget-object v8, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v8, :cond_1bb

    goto :goto_181

    :cond_1bb
    iget-object v10, v2, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$DefaultPermission;->mCertDigests:Ljava/lang/String;

    invoke-virtual {v8}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v8

    if-eqz v8, :cond_1c5

    :goto_1c3
    move v8, v6

    goto :goto_200

    :cond_1c5
    iget-object v8, v4, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    if-eqz v8, :cond_1e6

    if-nez v10, :cond_1cc

    goto :goto_1e6

    :cond_1cc
    iget-object v8, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8}, Landroid/content/pm/ApplicationInfo;->isSignedWithPlatformKey()Z

    move-result v8

    if-eqz v8, :cond_1de

    const-string/jumbo v8, "android"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1de

    goto :goto_1c3

    :cond_1de
    iget-object v8, v4, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {v8}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v8

    if-nez v8, :cond_1e8

    :cond_1e6
    :goto_1e6
    const/4 v8, 0x0

    goto :goto_200

    :cond_1e8
    array-length v11, v8

    const/4 v13, 0x0

    :goto_1ea
    if-ge v13, v11, :cond_1e6

    aget-object v14, v8, v13

    invoke-virtual {v14}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v14

    invoke-static {v14}, Landroid/util/PackageUtils;->computeSha256Digest([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1fd

    goto :goto_1c3

    :cond_1fd
    add-int/lit8 v13, v13, 0x1

    goto :goto_1ea

    :goto_200
    if-nez v8, :cond_204

    goto/16 :goto_181

    :cond_204
    array-length v8, v1

    const/4 v10, 0x0

    :goto_206
    if-ge v10, v8, :cond_303

    aget v11, v1, v10

    const-string v13, "Granting permission for package <"

    const-string v14, "> userId <"

    const-string v15, ">"

    invoke-static {v11, v13, v12, v14, v15}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v13, v2, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$DefaultPermission;->mFixedGrantedPermission:Ljava/util/Set;

    check-cast v13, Landroid/util/ArraySet;

    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    move-result v13

    const-string v14, "Failed to grant for "

    if-lez v13, :cond_23b

    iget-object v13, v2, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$DefaultPermission;->mFixedGrantedPermission:Ljava/util/Set;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_228
    invoke-virtual {v3, v4, v13, v6, v11}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$1;->grantRuntimePermissions(Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V
    :try_end_22b
    .catch Ljava/lang/Exception; {:try_start_228 .. :try_end_22b} :catch_22c

    goto :goto_23b

    :catch_22c
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23b
    :goto_23b
    iget-object v13, v2, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$DefaultPermission;->mNonFixedGrantedPermission:Ljava/util/Set;

    check-cast v13, Landroid/util/ArraySet;

    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    move-result v13

    if-lez v13, :cond_25f

    iget-object v13, v2, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$DefaultPermission;->mNonFixedGrantedPermission:Ljava/util/Set;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v15, 0x0

    :try_start_24b
    invoke-virtual {v3, v4, v13, v15, v11}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$1;->grantRuntimePermissions(Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V
    :try_end_24e
    .catch Ljava/lang/Exception; {:try_start_24b .. :try_end_24e} :catch_24f

    goto :goto_260

    :catch_24f
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_260

    :cond_25f
    const/4 v15, 0x0

    :goto_260
    iget-object v13, v4, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    if-eqz v13, :cond_273

    const-string v11, " use shared user id, skip revoke permission."

    invoke-virtual {v12, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26d
    move/from16 v18, v10

    move/from16 v17, v15

    goto/16 :goto_2fe

    :cond_273
    iget-object v13, v2, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$DefaultPermission;->mRevokedPermission:Ljava/util/Set;

    check-cast v13, Landroid/util/ArraySet;

    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    move-result v13

    if-lez v13, :cond_26d

    iget-object v13, v2, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$DefaultPermission;->mRevokedPermission:Ljava/util/Set;

    check-cast v13, Landroid/util/ArraySet;

    invoke-virtual {v13}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_285
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_26d

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    if-nez v13, :cond_294

    goto :goto_285

    :cond_294
    :try_start_294
    move-object v14, v9

    check-cast v14, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$1;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_29a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_294 .. :try_end_29a} :catch_2c0

    :try_start_29a
    iget-object v14, v14, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14
    :try_end_2a0
    .catch Ljava/lang/SecurityException; {:try_start_29a .. :try_end_2a0} :catch_2c7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_29a .. :try_end_2a0} :catch_2c0

    move/from16 v17, v15

    :try_start_2a2
    invoke-static {v11}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v15
    :try_end_2a6
    .catch Ljava/lang/SecurityException; {:try_start_2a2 .. :try_end_2a6} :catch_2bb
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2a2 .. :try_end_2a6} :catch_2b6

    move/from16 v18, v10

    move-object v10, v14

    const/4 v14, 0x0

    move/from16 v19, v11

    move-object v11, v13

    const v13, 0x3fbfb

    move/from16 v6, v19

    :try_start_2b2
    invoke-virtual/range {v10 .. v15}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    :try_end_2b5
    .catch Ljava/lang/SecurityException; {:try_start_2b2 .. :try_end_2b5} :catch_2cd
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2b2 .. :try_end_2b5} :catch_2de

    goto :goto_2d2

    :catch_2b6
    move/from16 v18, v10

    move v6, v11

    move-object v11, v13

    goto :goto_2de

    :catch_2bb
    move/from16 v18, v10

    move v6, v11

    move-object v11, v13

    goto :goto_2cd

    :catch_2c0
    move/from16 v18, v10

    move v6, v11

    move-object v11, v13

    move/from16 v17, v15

    goto :goto_2de

    :catch_2c7
    move/from16 v18, v10

    move v6, v11

    move-object v11, v13

    move/from16 v17, v15

    :catch_2cd
    :goto_2cd
    :try_start_2cd
    const-string v10, "Can\'t override a permission flag with POLICY_FIXED"

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2d2
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v10, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9, v6, v12, v10}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;->revokeRuntimePermissionsProxy(ILjava/lang/String;Ljava/util/Set;)V
    :try_end_2dd
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2cd .. :try_end_2dd} :catch_2de

    goto :goto_2f7

    :catch_2de
    :goto_2de
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v13, "IllegalArgumentException: "

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " - "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2f7
    move v11, v6

    move/from16 v15, v17

    move/from16 v10, v18

    const/4 v6, 0x1

    goto :goto_285

    :goto_2fe
    add-int/lit8 v10, v18, 0x1

    const/4 v6, 0x1

    goto/16 :goto_206

    :cond_303
    const/16 v17, 0x0

    goto/16 :goto_181

    :cond_307
    return-void
.end method

.method public final readDefaultExceptionsForPackage(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/ArrayMap;)V
    .registers 10

    const-string/jumbo v0, "OmcPermissionPolicy"

    :try_start_3
    const-string/jumbo v1, "package"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "sha256-cert-digest"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "countrycode"

    invoke-interface {p1, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_37

    iget-object p0, p0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy;->mPmProxy:Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;

    check-cast p0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p0, "ro.csc.country_code"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_30

    goto :goto_37

    :cond_30
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void

    :catch_34
    move-exception p0

    goto/16 :goto_aa

    :cond_37
    :goto_37
    new-instance p0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$DefaultPermission;

    invoke-direct {p0}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$DefaultPermission;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$DefaultPermission;->mCertDigests:Ljava/lang/String;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    :cond_42
    :goto_42
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_a6

    const/4 v5, 0x3

    if-ne v4, v5, :cond_52

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v3, :cond_a6

    :cond_52
    if-eq v4, v5, :cond_42

    const/4 v5, 0x4

    if-ne v4, v5, :cond_58

    goto :goto_42

    :cond_58
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "permission"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_89

    const-string/jumbo v4, "name"

    invoke-interface {p1, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "systemfixed"

    invoke-interface {p1, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_81

    iget-object v5, p0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$DefaultPermission;->mFixedGrantedPermission:Ljava/util/Set;

    check-cast v5, Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_42

    :cond_81
    iget-object v5, p0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$DefaultPermission;->mNonFixedGrantedPermission:Ljava/util/Set;

    check-cast v5, Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_42

    :cond_89
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown element under <defaultgrant - package>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_42

    :cond_a6
    invoke-virtual {p2, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a9} :catch_34

    return-void

    :goto_aa
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Exception "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
