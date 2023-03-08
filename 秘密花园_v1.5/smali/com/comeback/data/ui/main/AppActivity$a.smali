.class public Lcom/comeback/data/ui/main/AppActivity$a;
.super Ljava/lang/Object;
.source "AppActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/main/AppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/main/AppActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/main/AppActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/main/AppActivity$a;->a:Lcom/comeback/data/ui/main/AppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFileInfo(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/main/AppActivity$a;->a:Lcom/comeback/data/ui/main/AppActivity;

    invoke-static {v0, p1}, Lcom/comeback/data/ui/main/AppActivity;->n(Lcom/comeback/data/ui/main/AppActivity;Ljava/lang/String;)V

    return-void
.end method

.method public getFiles(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/main/AppActivity$a;->a:Lcom/comeback/data/ui/main/AppActivity;

    invoke-static {v0, p1}, Lcom/comeback/data/ui/main/AppActivity;->m(Lcom/comeback/data/ui/main/AppActivity;Ljava/lang/String;)V

    return-void
.end method
