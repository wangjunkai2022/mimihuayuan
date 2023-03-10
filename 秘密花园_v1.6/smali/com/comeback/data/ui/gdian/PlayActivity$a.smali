.class public Lcom/comeback/data/ui/gdian/PlayActivity$a;
.super Lm/j;
.source "PlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/gdian/PlayActivity;->l(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/gdian/bean/Play;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/gdian/PlayActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/gdian/PlayActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/PlayActivity$a;->e:Lcom/comeback/data/ui/gdian/PlayActivity;

    invoke-direct {p0}, Lm/j;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 0

    return-void
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 0

    const-string p1, "aD0="

    .line 1
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/comeback/data/ui/gdian/bean/Play;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/PlayActivity$a;->e:Lcom/comeback/data/ui/gdian/PlayActivity;

    invoke-virtual {p1}, Lcom/comeback/data/ui/gdian/bean/Play;->getData()Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->getPlayUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/comeback/data/ui/gdian/PlayActivity;->n(Lcom/comeback/data/ui/gdian/PlayActivity;Ljava/lang/String;)V

    return-void
.end method
