.class public Lf/e/a/j/b0/k/a;
.super Ljava/lang/Object;
.source "AESUtils.java"


# static fields
.field public static a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/comeback/data/App;->b:Lcom/comeback/data/App;

    .line 2
    invoke-static {v0}, Lcom/comeback/data/ndk/SignHelper;->getLutube(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lf/e/a/j/b0/k/a;->a:Ljava/lang/String;

    return-void
.end method
