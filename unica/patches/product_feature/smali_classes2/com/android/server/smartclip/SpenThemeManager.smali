.class public Lcom/android/server/smartclip/SpenThemeManager;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mMonitor:Lcom/android/internal/content/PackageMonitor;

.field public final mPackageRemovedHandler:Lcom/android/server/smartclip/SpenThemeManager$2;

.field public final mRegistered:Z

.field public final mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mRegistered:Z

    new-instance v1, Lcom/android/server/smartclip/SpenThemeManager$1;

    invoke-direct {v1, p0}, Lcom/android/server/smartclip/SpenThemeManager$1;-><init>(Lcom/android/server/smartclip/SpenThemeManager;)V

    iput-object v1, p0, Lcom/android/server/smartclip/SpenThemeManager;->mMonitor:Lcom/android/internal/content/PackageMonitor;

    new-instance v1, Lcom/android/server/smartclip/SpenThemeManager$2;

    invoke-direct {v1, p0}, Lcom/android/server/smartclip/SpenThemeManager$2;-><init>(Lcom/android/server/smartclip/SpenThemeManager;)V

    iput-object v1, p0, Lcom/android/server/smartclip/SpenThemeManager;->mPackageRemovedHandler:Lcom/android/server/smartclip/SpenThemeManager$2;

    iput-object p1, p0, Lcom/android/server/smartclip/SpenThemeManager;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    invoke-direct {v1, p0, p1}, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;-><init>(Lcom/android/server/smartclip/SpenThemeManager;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    invoke-virtual {v1}, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->makeJournaledFile()Lcom/android/internal/util/JournaledFile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x1

    const-string/jumbo v4, "SpenThemeManager"

    if-nez v2, :cond_36

    const-string/jumbo p1, "There\'s no data file to load"

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a6

    :cond_36
    :try_start_36
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3b
    .catch Ljava/io/FileNotFoundException; {:try_start_36 .. :try_end_3b} :catch_86
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3b} :catch_68
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_36 .. :try_end_3b} :catch_68

    :try_start_3b
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p1

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_48
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_62

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "hover-icon"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_62

    invoke-virtual {v1, p1}, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->parseHoverIconData(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_5f
    .catchall {:try_start_3b .. :try_end_5f} :catchall_60

    goto :goto_62

    :catchall_60
    move-exception p1

    goto :goto_6a

    :cond_62
    :goto_62
    if-ne v5, v3, :cond_48

    :try_start_64
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_67
    .catch Ljava/io/FileNotFoundException; {:try_start_64 .. :try_end_67} :catch_86
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_68
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_64 .. :try_end_67} :catch_68

    goto :goto_8c

    :catch_68
    move-exception p1

    goto :goto_73

    :goto_6a
    :try_start_6a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_6e

    goto :goto_72

    :catchall_6e
    move-exception v2

    :try_start_6f
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_72
    throw p1
    :try_end_73
    .catch Ljava/io/FileNotFoundException; {:try_start_6f .. :try_end_73} :catch_86
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_73} :catch_68
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6f .. :try_end_73} :catch_68

    :goto_73
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "failed parsing "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8c

    :catch_86
    const-string/jumbo p1, "no current wallpaper -- first boot?"

    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8c
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "load = "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->this$0:Lcom/android/server/smartclip/SpenThemeManager;

    iget-object v1, v1, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    invoke-virtual {v1}, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a6
    const/4 p1, 0x0

    :try_start_a7
    new-instance v1, Ljava/io/FileInputStream;

    invoke-static {v0, p1}, Lcom/android/server/smartclip/SpenThemeManager;->getThemeFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_b4} :catch_b5

    goto :goto_ba

    :catch_b5
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, p1

    :goto_ba
    iget-object v1, p0, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    iget v2, v1, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->hotspotX:F

    iget v1, v1, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->hotspotY:F

    invoke-static {v0, v2, v1}, Lcom/android/server/smartclip/SpenThemeManager;->setPenHoverIcon(Ljava/io/FileDescriptor;FF)V

    iget-boolean v0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mRegistered:Z

    if-eqz v0, :cond_c8

    goto :goto_d7

    :cond_c8
    iget-object v0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v1, p0, Lcom/android/server/smartclip/SpenThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    iput-boolean v3, p0, Lcom/android/server/smartclip/SpenThemeManager;->mRegistered:Z

    const-string/jumbo p0, "package monitor registered."

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d7
    return-void
.end method

.method public static getRootDir()Ljava/io/File;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/overlays"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "/spen_theme"

    invoke-static {v0, v2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_37

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1f9

    const/4 v3, -0x1

    invoke-static {v0, v2, v3, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_37
    return-object v1
.end method

.method public static getThemeFile(ILjava/lang/String;)Ljava/io/File;
    .registers 4

    const-string/jumbo v0, "spen_theme_pen_hover_icon"

    invoke-static {v0, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_16

    const/4 v1, 0x2

    if-eq p0, v1, :cond_e

    goto :goto_1d

    :cond_e
    const-string/jumbo p0, "spen_theme_pen_detach_sound"

    invoke-static {p0, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1d

    :cond_16
    const-string/jumbo p0, "spen_theme_pen_attach_sound"

    invoke-static {p0, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1d
    new-instance p0, Ljava/io/File;

    invoke-static {}, Lcom/android/server/smartclip/SpenThemeManager;->getRootDir()Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method public static setPenHoverIcon(Ljava/io/FileDescriptor;FF)V
    .registers 7

    const-string/jumbo v0, "SpenThemeManager"

    const/4 v1, 0x0

    if-eqz p0, :cond_22

    invoke-static {p0, v1, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "set icon image = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_22

    invoke-static {p0, p1, p2}, Landroid/view/PointerIcon;->create(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;

    move-result-object v1

    :cond_22
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "set icon pointer icon = "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    const/4 p1, 0x1

    invoke-static {p0, v1, p1}, Landroid/view/PointerIcon;->setDefaultPointerIconInternal(ILandroid/view/PointerIcon;Z)V

    return-void
.end method


# virtual methods
.method public final applyChanges(Ljava/lang/String;Ljava/io/FileDescriptor;ILjava/lang/String;)Z
    .registers 8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x0

    if-nez p2, :cond_22

    iget-object p2, p0, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    iget-object p2, p2, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->packageNameList:[Ljava/lang/String;

    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    iget-object p1, p0, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    iget-object p1, p1, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->packageNameList:[Ljava/lang/String;

    aput-object v0, p1, p3

    invoke-virtual {p0, p3}, Lcom/android/server/smartclip/SpenThemeManager;->deleteFile(I)V

    :cond_20
    move p1, v1

    goto :goto_51

    :cond_22
    invoke-static {p3, p4}, Lcom/android/server/smartclip/SpenThemeManager;->getThemeFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object p4

    :try_start_26
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2b} :catch_36

    :try_start_2b
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p4

    invoke-static {p2, p4}, Landroid/os/FileUtils;->copy(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)J
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_38

    :try_start_32
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_45

    :catch_36
    move-exception p2

    goto :goto_42

    :catchall_38
    move-exception p2

    :try_start_39
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3d

    goto :goto_41

    :catchall_3d
    move-exception p4

    :try_start_3e
    invoke-virtual {p2, p4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_41
    throw p2
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_42} :catch_36

    :goto_42
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :goto_45
    iget-object p2, p0, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    iget-object p2, p2, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->packageNameList:[Ljava/lang/String;

    aput-object p1, p2, p3

    if-eqz p3, :cond_50

    invoke-virtual {p0, p3}, Lcom/android/server/smartclip/SpenThemeManager;->deleteFile(I)V

    :cond_50
    const/4 p1, 0x1

    :goto_51
    iget-object p0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->makeJournaledFile()Lcom/android/internal/util/JournaledFile;

    move-result-object p2

    :try_start_57
    new-instance p3, Ljava/io/FileOutputStream;

    invoke-virtual {p2}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object p4

    invoke-direct {p3, p4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_60} :catch_a3

    :try_start_60
    new-instance p4, Ljava/io/BufferedOutputStream;

    invoke-direct {p4, p3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_65
    .catchall {:try_start_60 .. :try_end_65} :catchall_8e

    :try_start_65
    new-instance v1, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v1}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p4, v2}, Lcom/android/internal/util/FastXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/util/FastXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p0, v1}, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->saveElements(Lorg/xmlpull/v1/XmlSerializer;)V

    invoke-virtual {v1}, Lcom/android/internal/util/FastXmlSerializer;->endDocument()V

    invoke-virtual {p4}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-static {p3}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    invoke-virtual {p2}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_87
    .catchall {:try_start_65 .. :try_end_87} :catchall_90

    :try_start_87
    invoke-virtual {p4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8a
    .catchall {:try_start_87 .. :try_end_8a} :catchall_8e

    :try_start_8a
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_a3

    goto :goto_a6

    :catchall_8e
    move-exception p0

    goto :goto_9a

    :catchall_90
    move-exception p0

    :try_start_91
    invoke-virtual {p4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_94
    .catchall {:try_start_91 .. :try_end_94} :catchall_95

    goto :goto_99

    :catchall_95
    move-exception p4

    :try_start_96
    invoke-virtual {p0, p4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_99
    throw p0
    :try_end_9a
    .catchall {:try_start_96 .. :try_end_9a} :catchall_8e

    :goto_9a
    :try_start_9a
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V
    :try_end_9d
    .catchall {:try_start_9a .. :try_end_9d} :catchall_9e

    goto :goto_a2

    :catchall_9e
    move-exception p3

    :try_start_9f
    invoke-virtual {p0, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_a2
    throw p0
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a3} :catch_a3

    :catch_a3
    invoke-virtual {p2}, Lcom/android/internal/util/JournaledFile;->rollback()V

    :goto_a6
    return p1
.end method

.method public final deleteFile(I)V
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_8

    invoke-static {p1, v0}, Lcom/android/server/smartclip/SpenThemeManager;->getThemeFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_25

    :cond_8
    const/4 v1, 0x1

    if-ne p1, v1, :cond_17

    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    iget-object p0, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->mCurSoundPathInfo:Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;

    iget-object p0, p0, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->attachSoundPath:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_25

    :cond_17
    const/4 v1, 0x2

    if-ne p1, v1, :cond_25

    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    iget-object p0, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->mCurSoundPathInfo:Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;

    iget-object p0, p0, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->detachSoundPath:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_25
    :goto_25
    if-eqz v0, :cond_31

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_2e

    goto :goto_31

    :cond_2e
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_31
    :goto_31
    return-void
.end method

.method public final setPenAttachSound(Ljava/io/FileDescriptor;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "set attach sound package = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", file = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", file name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SpenThemeManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2c

    return-void

    :cond_2c
    const/4 v0, 0x1

    invoke-virtual {p0, p2, p1, v0, p3}, Lcom/android/server/smartclip/SpenThemeManager;->applyChanges(Ljava/lang/String;Ljava/io/FileDescriptor;ILjava/lang/String;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_4e

    invoke-static {v0, p3}, Lcom/android/server/smartclip/SpenThemeManager;->getThemeFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p3

    if-nez p3, :cond_44

    iget-object p0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    invoke-virtual {p0, p2}, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->setAttachSoundPath(Ljava/lang/String;)V

    return-void

    :cond_44
    iget-object p0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->setAttachSoundPath(Ljava/lang/String;)V

    return-void

    :cond_4e
    iget-object p0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    invoke-virtual {p0, p2}, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->setAttachSoundPath(Ljava/lang/String;)V

    return-void
.end method

.method public final setPenDetachSound(Ljava/io/FileDescriptor;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "set detach sound package = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", file = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", file name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SpenThemeManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2c

    return-void

    :cond_2c
    const/4 v0, 0x2

    invoke-virtual {p0, p2, p1, v0, p3}, Lcom/android/server/smartclip/SpenThemeManager;->applyChanges(Ljava/lang/String;Ljava/io/FileDescriptor;ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_41

    invoke-static {v0, p3}, Lcom/android/server/smartclip/SpenThemeManager;->getThemeFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->setDetachSoundPath(Ljava/lang/String;)V

    return-void

    :cond_41
    iget-object p0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->setDetachSoundPath(Ljava/lang/String;)V

    return-void
.end method

.method public final setPenHoverIcon(Ljava/lang/String;Ljava/io/FileDescriptor;FF)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "set icon package = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", file = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SpenThemeManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    return-void

    :cond_24
    iget-object v0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    iput p3, v0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->hotspotX:F

    iput p4, v0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->hotspotY:F

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/smartclip/SpenThemeManager;->applyChanges(Ljava/lang/String;Ljava/io/FileDescriptor;ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_48

    :try_start_32
    new-instance p0, Ljava/io/FileInputStream;

    invoke-static {v0, v1}, Lcom/android/server/smartclip/SpenThemeManager;->getThemeFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_3f} :catch_40

    goto :goto_44

    :catch_40
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_44
    invoke-static {v1, p3, p4}, Lcom/android/server/smartclip/SpenThemeManager;->setPenHoverIcon(Ljava/io/FileDescriptor;FF)V

    return-void

    :cond_48
    const/4 p0, 0x0

    invoke-static {v1, p0, p0}, Lcom/android/server/smartclip/SpenThemeManager;->setPenHoverIcon(Ljava/io/FileDescriptor;FF)V

    return-void
.end method
