.class public final Lcom/android/server/textclassifier/TextClassificationManagerService$CallbackWrapper;
.super Landroid/service/textclassifier/ITextClassifierCallback$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mWrapped:Landroid/service/textclassifier/ITextClassifierCallback;


# direct methods
.method public constructor <init>(Landroid/service/textclassifier/ITextClassifierCallback;)V
    .locals 0

    invoke-direct {p0}, Landroid/service/textclassifier/ITextClassifierCallback$Stub;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/service/textclassifier/ITextClassifierCallback;

    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$CallbackWrapper;->mWrapped:Landroid/service/textclassifier/ITextClassifierCallback;

    return-void
.end method

.method public static rewriteTextClassificationIcons(Landroid/view/textclassifier/TextClassification;)Landroid/view/textclassifier/TextClassification;
    .locals 8

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassification;->getActions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/RemoteAction;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/app/RemoteAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    invoke-static {v5}, Lcom/android/server/textclassifier/TextClassificationManagerService$CallbackWrapper;->validAction(Landroid/app/RemoteAction;)Landroid/app/RemoteAction;

    move-result-object v5

    const/4 v4, 0x1

    :cond_0
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassification;->toBuilder()Landroid/view/textclassifier/TextClassification$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassification$Builder;->clearActions()Landroid/view/textclassifier/TextClassification$Builder;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/textclassifier/TextClassification$Builder;->addActions(Ljava/util/Collection;)Landroid/view/textclassifier/TextClassification$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassification$Builder;->build()Landroid/view/textclassifier/TextClassification;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static validAction(Landroid/app/RemoteAction;)Landroid/app/RemoteAction;
    .locals 7

    new-instance v0, Landroid/app/RemoteAction;

    invoke-virtual {p0}, Landroid/app/RemoteAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    sget-object v2, Lcom/android/server/textclassifier/IconsUriHelper;->sSingleton:Lcom/android/server/textclassifier/IconsUriHelper;

    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v2, Lcom/android/server/textclassifier/IconsUriHelper;->mPackageIds:Ljava/util/Map;

    monitor-enter v4

    :try_start_0
    iget-object v5, v2, Lcom/android/server/textclassifier/IconsUriHelper;->mPackageIds:Ljava/util/Map;

    check-cast v5, Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v2, Lcom/android/server/textclassifier/IconsUriHelper;->mPackageIds:Ljava/util/Map;

    iget-object v6, v2, Lcom/android/server/textclassifier/IconsUriHelper;->mIdSupplier:Ljava/util/function/Supplier;

    invoke-interface {v6}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    check-cast v5, Landroid/util/ArrayMap;

    invoke-virtual {v5, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    new-instance v5, Landroid/net/Uri$Builder;

    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v6, "content"

    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    const-string/jumbo v6, "com.android.textclassifier.icons"

    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    iget-object v2, v2, Lcom/android/server/textclassifier/IconsUriHelper;->mPackageIds:Ljava/util/Map;

    check-cast v2, Landroid/util/ArrayMap;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Landroid/graphics/drawable/Icon;->createWithContentUri(Landroid/net/Uri;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/RemoteAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/RemoteAction;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/RemoteAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {p0}, Landroid/app/RemoteAction;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/RemoteAction;->setEnabled(Z)V

    invoke-virtual {p0}, Landroid/app/RemoteAction;->shouldShowIcon()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/app/RemoteAction;->setShouldShowIcon(Z)V

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final onFailure()V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$CallbackWrapper;->mWrapped:Landroid/service/textclassifier/ITextClassifierCallback;

    invoke-interface {p0}, Landroid/service/textclassifier/ITextClassifierCallback;->onFailure()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string/jumbo v0, "TextClassificationManagerService"

    const-string v1, "Callback error"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final onSuccess(Landroid/os/Bundle;)V
    .locals 9

    invoke-static {p1}, Landroid/service/textclassifier/TextClassifierService;->getResponse(Landroid/os/Bundle;)Landroid/os/Parcelable;

    move-result-object v0

    instance-of v1, v0, Landroid/view/textclassifier/TextClassification;

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/service/textclassifier/TextClassifierService;->getResponse(Landroid/os/Bundle;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassification;

    invoke-static {v0}, Lcom/android/server/textclassifier/TextClassificationManagerService$CallbackWrapper;->rewriteTextClassificationIcons(Landroid/view/textclassifier/TextClassification;)Landroid/view/textclassifier/TextClassification;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {p1, v0}, Landroid/service/textclassifier/TextClassifierService;->putResponse(Landroid/os/Bundle;Landroid/os/Parcelable;)V

    goto/16 :goto_1

    :cond_0
    instance-of v1, v0, Landroid/view/textclassifier/ConversationActions;

    if-eqz v1, :cond_3

    invoke-static {p1}, Landroid/service/textclassifier/TextClassifierService;->getResponse(Landroid/os/Bundle;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/ConversationActions;

    invoke-virtual {v0}, Landroid/view/textclassifier/ConversationActions;->getConversationActions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_2

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/textclassifier/ConversationAction;

    invoke-virtual {v6}, Landroid/view/textclassifier/ConversationAction;->getAction()Landroid/app/RemoteAction;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/app/RemoteAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    invoke-virtual {v6}, Landroid/view/textclassifier/ConversationAction;->toBuilder()Landroid/view/textclassifier/ConversationAction$Builder;

    move-result-object v5

    invoke-virtual {v6}, Landroid/view/textclassifier/ConversationAction;->getAction()Landroid/app/RemoteAction;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/textclassifier/TextClassificationManagerService$CallbackWrapper;->validAction(Landroid/app/RemoteAction;)Landroid/app/RemoteAction;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/textclassifier/ConversationAction$Builder;->setAction(Landroid/app/RemoteAction;)Landroid/view/textclassifier/ConversationAction$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/textclassifier/ConversationAction$Builder;->build()Landroid/view/textclassifier/ConversationAction;

    move-result-object v6

    const/4 v5, 0x1

    :cond_1
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_6

    new-instance v1, Landroid/view/textclassifier/ConversationActions;

    invoke-virtual {v0}, Landroid/view/textclassifier/ConversationActions;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Landroid/view/textclassifier/ConversationActions;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-static {p1, v1}, Landroid/service/textclassifier/TextClassifierService;->putResponse(Landroid/os/Bundle;Landroid/os/Parcelable;)V

    goto :goto_1

    :cond_3
    instance-of v0, v0, Landroid/view/textclassifier/TextSelection;

    if-eqz v0, :cond_6

    invoke-static {p1}, Landroid/service/textclassifier/TextClassifierService;->getResponse(Landroid/os/Bundle;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextSelection;

    invoke-virtual {v0}, Landroid/view/textclassifier/TextSelection;->getTextClassification()Landroid/view/textclassifier/TextClassification;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Landroid/view/textclassifier/TextSelection;->getTextClassification()Landroid/view/textclassifier/TextClassification;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/textclassifier/TextClassificationManagerService$CallbackWrapper;->rewriteTextClassificationIcons(Landroid/view/textclassifier/TextClassification;)Landroid/view/textclassifier/TextClassification;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Landroid/view/textclassifier/TextSelection;->toBuilder()Landroid/view/textclassifier/TextSelection$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/textclassifier/TextSelection$Builder;->setTextClassification(Landroid/view/textclassifier/TextClassification;)Landroid/view/textclassifier/TextSelection$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/textclassifier/TextSelection$Builder;->build()Landroid/view/textclassifier/TextSelection;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/service/textclassifier/TextClassifierService;->putResponse(Landroid/os/Bundle;Landroid/os/Parcelable;)V

    :cond_6
    :goto_1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$CallbackWrapper;->mWrapped:Landroid/service/textclassifier/ITextClassifierCallback;

    invoke-interface {p0, p1}, Landroid/service/textclassifier/ITextClassifierCallback;->onSuccess(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string/jumbo p1, "TextClassificationManagerService"

    const-string v0, "Callback error"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
