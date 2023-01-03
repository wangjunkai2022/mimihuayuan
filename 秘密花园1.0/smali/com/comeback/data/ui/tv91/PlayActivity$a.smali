.class public Lcom/comeback/data/ui/tv91/PlayActivity$a;
.super Lm/j;
.source "PlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/tv91/PlayActivity;->l(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/tv91/bean/MovieInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/tv91/PlayActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/tv91/PlayActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/tv91/PlayActivity$a;->e:Lcom/comeback/data/ui/tv91/PlayActivity;

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

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/comeback/data/ui/tv91/bean/MovieInfo;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/tv91/PlayActivity$a;->e:Lcom/comeback/data/ui/tv91/PlayActivity;

    invoke-static {v0, p1}, Lcom/comeback/data/ui/tv91/PlayActivity;->n(Lcom/comeback/data/ui/tv91/PlayActivity;Lcom/comeback/data/ui/tv91/bean/MovieInfo;)V

    return-void
.end method
