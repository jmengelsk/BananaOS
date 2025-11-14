.class public final Lcom/samsung/android/server/util/CoreEncryptor;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final sCoreEncryptor:Ljava/util/concurrent/ConcurrentHashMap;


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/server/util/CoreEncryptor;->sCoreEncryptor:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/util/CoreEncryptor;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final decrypt(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "AES/CBC/PKCS7Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/16 v2, 0x2000

    new-array v2, v2, [B

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    new-array v4, v3, [B

    invoke-virtual {p1, v4, v0, v3}, Ljava/io/InputStream;->read([BII)I

    iget-object p0, p0, Lcom/samsung/android/server/util/CoreEncryptor;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/server/util/CoreEncryptor$KeyStoreHolder;->-$$Nest$smgetKey(Landroid/content/Context;)Ljavax/crypto/SecretKey;

    move-result-object p0

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v4, 0x2

    invoke-virtual {v1, v4, p0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result p0

    const/4 v3, -0x1

    if-eq p0, v3, :cond_0

    invoke-virtual {v1, v2, v0, p0}, Ljavax/crypto/Cipher;->update([BII)[B

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public final encrypt(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "AES/CBC/PKCS7Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/server/util/CoreEncryptor;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/server/util/CoreEncryptor$KeyStoreHolder;->-$$Nest$smgetKey(Landroid/content/Context;)Ljavax/crypto/SecretKey;

    move-result-object p0

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object p0

    array-length v3, p0

    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write([B)V

    const/16 p0, 0x2000

    new-array p0, p0, [B

    :goto_0
    invoke-virtual {p1, p0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    invoke-virtual {v1, p0, v0, v3}, Ljavax/crypto/Cipher;->update([BII)[B

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method
