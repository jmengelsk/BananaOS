.class public abstract Lcom/android/server/permission/access/appop/BaseAppOpPolicy;
.super Lcom/android/server/permission/access/SchemePolicy;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final persistence:Lcom/android/server/permission/access/appop/BaseAppOpPersistence;


# direct methods
.method public constructor <init>(Lcom/android/server/permission/access/appop/BaseAppOpPersistence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/appop/BaseAppOpPolicy;->persistence:Lcom/android/server/permission/access/appop/BaseAppOpPersistence;

    return-void
.end method


# virtual methods
.method public final getObjectScheme()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "app-op"

    return-object p0
.end method

.method public final parseUserState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/permission/access/appop/BaseAppOpPolicy;->persistence:Lcom/android/server/permission/access/appop/BaseAppOpPersistence;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/permission/access/appop/BaseAppOpPersistence;->parseUserState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;I)V

    return-void
.end method

.method public final serializeUserState(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/AccessState;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/permission/access/appop/BaseAppOpPolicy;->persistence:Lcom/android/server/permission/access/appop/BaseAppOpPersistence;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/permission/access/appop/BaseAppOpPersistence;->serializeUserState(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/AccessState;I)V

    return-void
.end method
