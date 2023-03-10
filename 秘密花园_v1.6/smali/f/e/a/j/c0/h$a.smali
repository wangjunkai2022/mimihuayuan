.class public Lf/e/a/j/c0/h$a;
.super Ljava/lang/Object;
.source "AppActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/e/a/j/c0/h;->onPageFinished(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lf/e/a/j/c0/h;


# direct methods
.method public constructor <init>(Lf/e/a/j/c0/h;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/j/c0/h$a;->b:Lf/e/a/j/c0/h;

    iput-object p2, p0, Lf/e/a/j/c0/h$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/e/a/j/c0/h$a;->b:Lf/e/a/j/c0/h;

    iget-object v0, v0, Lf/e/a/j/c0/h;->b:Lcom/comeback/data/ui/main/AppActivity;

    iget-object v1, p0, Lf/e/a/j/c0/h$a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/comeback/data/ui/main/AppActivity;->l(Lcom/comeback/data/ui/main/AppActivity;Ljava/lang/String;)V

    return-void
.end method
