.class public Lcom/comeback/data/ui/tomato/bean/TomatoLiveBase$DataEntity;
.super Ljava/lang/Object;
.source "TomatoLiveBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/tomato/bean/TomatoLiveBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataEntity"
.end annotation


# static fields
.field public static final ENCRYPT_FILE_KEY:Ljava/lang/String;


# instance fields
.field public data:Ljava/lang/String;

.field public key:Ljava/lang/String;

.field public final synthetic this$0:Lcom/comeback/data/ui/tomato/bean/TomatoLiveBase;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "eisqJw8UcHEyInUpOg0IGl8JCiNSBAlxMjdxITkrMCh2DyITDBRzUDIBcSY5BSQpdihXJj4eV3IlC0ZMSCAmXE0uUl1eAghiOgEFKTk9TBFbDFZQJhl8fkUXQlNNJRM/dU0JFFkJa1cEX11TEyQzABgrCRYkI2BjG1JQEUxBOgxuNTIPPQAJRQkwWh0NGQZSRQAFCy44fXURHFFeCBMMWHIELwoZIGxbFlVQLQhTITxADBJVW0YWSTU2XwAaElQ6QVc3Vl4wdFE/MlIjSAklI0EtIipEO3x9XAoELzkNLil2IyYnDCp7XTUVUVYcCwAYUAQSIQ9AWAUFU2EUASQCDk8yEyMtRHoKRDV1BigbDBMAW1seO0IBBjw1eRU6LVYkYzM2USAFdWUhCkA2DF4QDlBXLlYTCXZZCgUHMyFeTDNwOCo1HyF4AEY1WxEARRBAeRQwHV0lfRg/U2ciMl4RUxgxOzZTHmF4OQBMLC4NWwF5LQAzAiFrByUTZQoxBRkRZyclFTE7AEI6MH4ELgA0HwczKSYqPHd7Hy9mKUwlNS1NESBXAxtaAgoQBhEhMBkRXToAMBxLV0NKEVgfSTsJHkdRER49G1tAMgIFLCAbEy10Njk9BwJqVQETUCMrHTIocjoCIhIGCgEGE18kKTsgExwuGi4kHHdRHStWNysBOSRYMwg1DSNTVDsXTVcBKwsaXiwoMFwQUHolH2YiPgcTCXVTMl0bB2hkNwt5ED0oAVlcETcmJTBLVCYpbEgxL1YgRDspEioYfHJAMU5RIV9IDHIoVAIjNHtEJg9/ISAEGy5tJVADL1xechgUfDcSJi4nehU0PBxEe2pBDX0GLx8CQEUAKSsHNW1UGxFcNxQ8UV56FCVUX1xDUSEoYjUzOykqclcvEl0qX0dYFgVQFy8nAXQQLwYPNUN4KhZCXj0ZNiVtSQxUDQZ6VD08AgFBBFMMRzopA10qWwAFLGIuH1kJKV0BUyMbB1IKXAAHCQIPSDNFL1oUJiJzciJUcRUXLA47YjYWElNFflsEAl4JEFoZX3MMKQ8ZRQlSRQVXCDYDEiVtEg4wKj19BRwBDV4cABkhRiU0IiM0fXQgSX4rHggKPVMDBR4BRWhpRjJlJQI7XlY="

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/comeback/data/ui/tomato/bean/TomatoLiveBase$DataEntity;->ENCRYPT_FILE_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/comeback/data/ui/tomato/bean/TomatoLiveBase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/tomato/bean/TomatoLiveBase$DataEntity;->this$0:Lcom/comeback/data/ui/tomato/bean/TomatoLiveBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/tomato/bean/TomatoLiveBase$DataEntity;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getJsonData()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/tomato/bean/TomatoLiveBase$DataEntity;->key:Ljava/lang/String;

    sget-object v1, Lcom/comeback/data/ui/tomato/bean/TomatoLiveBase$DataEntity;->ENCRYPT_FILE_KEY:Ljava/lang/String;

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n"

    .line 3
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 4
    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v1, v5

    .line 5
    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2d

    if-eq v7, v8, :cond_0

    .line 6
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0xa

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lc/a/a/b/g/h;->F([B)[B

    move-result-object v1

    .line 9
    array-length v2, v1

    const/4 v3, 0x0

    if-nez v2, :cond_2

    const-string v1, "base64 is empty"

    .line 10
    invoke-static {v1}, Lf/h/a/a/a;->c(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    :try_start_0
    const-string v2, "RSA"

    .line 11
    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 12
    :try_start_1
    new-instance v4, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v4, v1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v4}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v4

    check-cast v4, Ljava/security/interfaces/RSAPrivateKey;
    :try_end_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-exception v4

    .line 13
    :try_start_2
    invoke-static {v4}, Lf/h/a/a/a;->c(Ljava/lang/Object;)V

    .line 14
    new-instance v4, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v4, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v4}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/security/interfaces/RSAPrivateKey;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 15
    invoke-static {v1}, Lf/h/a/a/a;->c(Ljava/lang/Object;)V

    :goto_1
    move-object v4, v3

    .line 16
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lc/a/a/b/g/h;->F([B)[B

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 17
    :try_start_4
    invoke-static {v0}, Lf/h/a/a/a;->c(Ljava/lang/Object;)V

    move-object v0, v3

    :goto_3
    if-eqz v0, :cond_3

    .line 18
    array-length v1, v0

    if-eqz v1, :cond_3

    const-string v1, "RSA/ECB/PKCS1Padding"

    .line 19
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x2

    .line 20
    invoke-virtual {v1, v2, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 21
    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    goto :goto_4

    .line 22
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "encrypted SecretKey is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception v0

    .line 23
    invoke-static {v0}, Lf/h/a/a/a;->c(Ljava/lang/Object;)V

    .line 24
    :goto_4
    new-instance v0, Ljava/lang/String;

    const-string v1, "QhYFSVM="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 25
    iget-object v1, p0, Lcom/comeback/data/ui/tomato/bean/TomatoLiveBase$DataEntity;->data:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/comeback/data/ui/tomato/bean/TomatoLiveBase;->access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/tomato/bean/TomatoLiveBase$DataEntity;->key:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/tomato/bean/TomatoLiveBase$DataEntity;->data:Ljava/lang/String;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/tomato/bean/TomatoLiveBase$DataEntity;->key:Ljava/lang/String;

    return-void
.end method
