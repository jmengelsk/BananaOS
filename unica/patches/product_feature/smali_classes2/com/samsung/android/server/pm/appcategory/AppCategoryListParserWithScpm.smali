.class public final Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;
.super Lcom/samsung/android/server/pm/appcategory/AppCategoryListParser;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final FILE_PATH:Ljava/lang/String;

.field public static final NAME_PATTERN:Ljava/util/regex/Pattern;

.field public static final TEMP_FILE_PATH:Ljava/lang/String;


# instance fields
.field public mShouldDecode:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/system/appcategory/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tempcategory.xml"

    invoke-static {v0, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;->TEMP_FILE_PATH:Ljava/lang/String;

    const-string/jumbo v1, "pm_app_category_from_scpm.xml"

    invoke-static {v0, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;->FILE_PATH:Ljava/lang/String;

    const-string/jumbo v0, "name=\"(.+)\""

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;->NAME_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static getNameInPattern(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;->NAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    add-int/lit8 v1, v1, 0x6

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static updateParserIfNeeded(Ljava/io/FileDescriptor;)Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;
    .registers 18

    const-string v1, ", oldVersion="

    const-string/jumbo v2, "updateParserIfNeeded: newVersion="

    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;->TEMP_FILE_PATH:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v5, 0x0

    const-string v6, "AppCategoryListParserWithScpm"

    if-nez v3, :cond_2a

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "Failed to mkdirs"

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_2a
    const-wide/32 v7, 0x78a41d35  # 9.999993913E-315

    const-string/jumbo v3, "persist.sys.package_feature.version.appcategory"

    invoke-static {v3, v7, v8}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    :try_start_36
    new-instance v11, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    move-object/from16 v12, p0

    invoke-direct {v0, v12}, Ljava/io/FileReader;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v11, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_42
    .catchall {:try_start_36 .. :try_end_42} :catchall_180

    :try_start_42
    new-instance v12, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v12, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_172

    const/4 v0, 0x0

    :goto_4d
    :try_start_4d
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_102

    add-int/lit8 v14, v0, 0x1

    const-string/jumbo v0, "version name"

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_5c
    .catchall {:try_start_4d .. :try_end_5c} :catchall_fe

    if-eqz v0, :cond_a3

    :try_start_5e
    invoke-static {v13}, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;->getNameInPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9
    :try_end_6a
    .catchall {:try_start_5e .. :try_end_6a} :catchall_9d

    cmp-long v0, v9, v7

    if-gtz v0, :cond_9a

    :try_start_6e
    invoke-virtual {v12}, Ljava/io/BufferedWriter;->close()V
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_94

    :try_start_71
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_91

    invoke-static {v2, v9, v10, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_90

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_90
    return-object v5

    :catchall_91
    move-exception v0

    goto/16 :goto_182

    :catchall_94
    move-exception v0

    move-object v3, v0

    move-object/from16 v16, v11

    goto/16 :goto_177

    :cond_9a
    move-object/from16 v16, v11

    goto :goto_f2

    :catchall_9d
    move-exception v0

    move-object v3, v0

    move-object/from16 v16, v11

    goto/16 :goto_167

    :cond_a3
    :try_start_a3
    const-string/jumbo v0, "package name"

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_aa
    .catchall {:try_start_a3 .. :try_end_aa} :catchall_fe

    if-eqz v0, :cond_9a

    :try_start_ac
    invoke-static {v13}, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;->getNameInPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b6

    move-object v15, v5

    move-object/from16 v16, v11

    goto :goto_c6

    :cond_b6
    new-instance v15, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5
    :try_end_bc
    .catchall {:try_start_ac .. :try_end_bc} :catchall_cd

    move-object/from16 v16, v11

    const/4 v11, 0x2

    :try_start_bf
    invoke-static {v5, v11}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v5

    invoke-direct {v15, v5}, Ljava/lang/String;-><init>([B)V

    :goto_c6
    invoke-virtual {v13, v0, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13
    :try_end_ca
    .catchall {:try_start_bf .. :try_end_ca} :catchall_cb

    goto :goto_f2

    :catchall_cb
    move-exception v0

    goto :goto_d0

    :catchall_cd
    move-exception v0

    move-object/from16 v16, v11

    :goto_d0
    :try_start_d0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed line="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", e="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f2

    :catchall_ed
    move-exception v0

    :goto_ee
    move-object v3, v0

    const/4 v5, 0x0

    goto/16 :goto_167

    :goto_f2
    invoke-virtual {v12, v13}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/BufferedWriter;->newLine()V

    move v0, v14

    move-object/from16 v11, v16

    const/4 v5, 0x0

    goto/16 :goto_4d

    :catchall_fe
    move-exception v0

    move-object/from16 v16, v11

    goto :goto_ee

    :cond_102
    move-object/from16 v16, v11

    invoke-virtual {v12}, Ljava/io/BufferedWriter;->flush()V

    new-instance v0, Ljava/io/File;

    sget-object v5, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;->FILE_PATH:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_117

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_117
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_15f

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;

    invoke-direct {v3}, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParser;-><init>()V
    :try_end_12e
    .catchall {:try_start_d0 .. :try_end_12e} :catchall_ed

    :try_start_12e
    invoke-virtual {v3}, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;->parseAppCategoryList()V
    :try_end_131
    .catchall {:try_start_12e .. :try_end_131} :catchall_15b

    :try_start_131
    invoke-virtual {v12}, Ljava/io/BufferedWriter;->close()V
    :try_end_134
    .catchall {:try_start_131 .. :try_end_134} :catchall_157

    :try_start_134
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V
    :try_end_137
    .catchall {:try_start_134 .. :try_end_137} :catchall_154

    invoke-static {v2, v9, v10, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1a4

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1a4

    :catchall_154
    move-exception v0

    move-object v5, v3

    goto :goto_182

    :catchall_157
    move-exception v0

    move-object v5, v3

    :goto_159
    move-object v3, v0

    goto :goto_177

    :catchall_15b
    move-exception v0

    move-object v5, v3

    move-object v3, v0

    goto :goto_167

    :cond_15f
    :try_start_15f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "Failed to renameTo."

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_167
    .catchall {:try_start_15f .. :try_end_167} :catchall_ed

    :goto_167
    :try_start_167
    invoke-virtual {v12}, Ljava/io/BufferedWriter;->close()V
    :try_end_16a
    .catchall {:try_start_167 .. :try_end_16a} :catchall_16b

    goto :goto_16f

    :catchall_16b
    move-exception v0

    :try_start_16c
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_16f
    throw v3
    :try_end_170
    .catchall {:try_start_16c .. :try_end_170} :catchall_170

    :catchall_170
    move-exception v0

    goto :goto_159

    :catchall_172
    move-exception v0

    move-object/from16 v16, v11

    move-object v3, v0

    const/4 v5, 0x0

    :goto_177
    :try_start_177
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V
    :try_end_17a
    .catchall {:try_start_177 .. :try_end_17a} :catchall_17b

    goto :goto_17f

    :catchall_17b
    move-exception v0

    :try_start_17c
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_17f
    throw v3
    :try_end_180
    .catchall {:try_start_17c .. :try_end_180} :catchall_91

    :catchall_180
    move-exception v0

    const/4 v5, 0x0

    :goto_182
    :try_start_182
    const-string v3, "Failed to updateParserIfNeeded."

    invoke-static {v6, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_187
    .catchall {:try_start_182 .. :try_end_187} :catchall_1a5

    invoke-static {v2, v9, v10, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1a3

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1a3
    move-object v3, v5

    :cond_1a4
    :goto_1a4
    return-object v3

    :catchall_1a5
    move-exception v0

    invoke-static {v2, v9, v10, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1c2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_1c2
    throw v0
.end method


# virtual methods
.method public final parseAppCategoryList()V
    .registers 10

    const-string/jumbo v0, "parseAppCategoryList: ScpmVersion="

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;->FILE_PATH:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const-wide/32 v3, 0x78a41d35  # 9.999993913E-315

    const-string/jumbo v5, "persist.sys.package_feature.version.appcategory"

    const-string v6, "AppCategoryListParserWithScpm"

    if-eqz v1, :cond_43

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;->mShouldDecode:Z

    const/4 v1, 0x0

    :try_start_1c
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParser;->parseAppCategoryList(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v3, v4}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_32} :catch_37
    .catchall {:try_start_1c .. :try_end_32} :catchall_35

    iput-boolean v1, p0, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;->mShouldDecode:Z

    return-void

    :catchall_35
    move-exception v0

    goto :goto_40

    :catch_37
    move-exception v0

    :try_start_38
    const-string v2, "Failed to read SCPM file."

    invoke-static {v6, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3d
    .catchall {:try_start_38 .. :try_end_3d} :catchall_35

    iput-boolean v1, p0, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;->mShouldDecode:Z

    goto :goto_43

    :goto_40
    iput-boolean v1, p0, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;->mShouldDecode:Z

    throw v0

    :cond_43
    :goto_43
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParser;->parseAppCategoryList(Ljava/lang/String;)V

    const-string/jumbo p0, "SCPM file was not existed or corrupted. Read system file"

    invoke-static {v6, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final parsePackages(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .registers 7

    invoke-super {p0, p1}, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParser;->parsePackages(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object p1

    iget-boolean p0, p0, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;->mShouldDecode:Z

    if-nez p0, :cond_9

    return-object p1

    :cond_9
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_15
    if-ge v1, v0, :cond_36

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_23

    const/4 v2, 0x0

    goto :goto_32

    :cond_23
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v4, 0x2

    invoke-static {v2, v4}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    move-object v2, v3

    :goto_32
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_36
    return-object p0
.end method

.method public final restoreToSystemFile()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;->mShouldDecode:Z

    const-wide/32 v0, 0x78a41d35  # 9.999993913E-315

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "persist.sys.package_feature.version.appcategory"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParser;->parseAppCategoryList(Ljava/lang/String;)V

    const-string p0, "AppCategoryListParserWithScpm"

    const-string/jumbo v0, "SCPM file might be corrupted. Read system file instead"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
