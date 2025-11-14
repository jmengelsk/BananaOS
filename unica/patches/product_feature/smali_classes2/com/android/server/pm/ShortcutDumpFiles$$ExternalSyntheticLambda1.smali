.class public final synthetic Lcom/android/server/pm/ShortcutDumpFiles$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/io/FileFilter;


# virtual methods
.method public final accept(Ljava/io/File;)Z
    .registers 2

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p0

    return p0
.end method
