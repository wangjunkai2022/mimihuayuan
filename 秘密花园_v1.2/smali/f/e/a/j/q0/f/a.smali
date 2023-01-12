.class public Lf/e/a/j/q0/f/a;
.super Ljava/lang/Object;
.source "AES.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/comeback/data/App;->b:Lcom/comeback/data/App;

    .line 2
    invoke-static {v0}, Lcom/comeback/data/ndk/SignHelper;->getXiaMiKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lf/e/a/j/q0/f/a;->a:Ljava/lang/String;

    .line 3
    sget-object v0, Lcom/comeback/data/App;->b:Lcom/comeback/data/App;

    .line 4
    invoke-static {v0}, Lcom/comeback/data/ndk/SignHelper;->getXiaMiIv(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lf/e/a/j/q0/f/a;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    :try_start_0
    const-string v0, "dicwSygxehwjLXc0TToCD1MLDQM="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 2
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v2, Lf/e/a/j/q0/f/a;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 3
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v3, Lf/e/a/j/q0/f/a;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const-string v4, "dicw"

    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 4
    new-instance v1, Ljava/lang/String;

    invoke-static {p0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object p0
.end method
