.class public Lcom/comeback/data/ui/maomi/MmLaunchActivity$a;
.super Ljava/lang/Object;
.source "MmLaunchActivity.java"

# interfaces
.implements Li/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/maomi/MmLaunchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/maomi/MmLaunchActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/maomi/MmLaunchActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/maomi/MmLaunchActivity$a;->a:Lcom/comeback/data/ui/maomi/MmLaunchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Li/f;Li/h0;)V
    .locals 2

    .line 1
    iget p2, p2, Li/h0;->e:I

    const/16 v0, 0x12c

    const/4 v1, 0x1

    if-le p2, v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/comeback/data/ui/maomi/MmLaunchActivity$a;->a:Lcom/comeback/data/ui/maomi/MmLaunchActivity;

    .line 3
    iget-object p1, p1, Lcom/comeback/data/ui/maomi/MmLaunchActivity;->d:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/comeback/data/ui/maomi/MmLaunchActivity$a;->a:Lcom/comeback/data/ui/maomi/MmLaunchActivity;

    .line 6
    invoke-virtual {p1}, Lcom/comeback/data/ui/maomi/MmLaunchActivity;->m()V

    :cond_0
    return-void

    .line 7
    :cond_1
    iget-object p2, p0, Lcom/comeback/data/ui/maomi/MmLaunchActivity$a;->a:Lcom/comeback/data/ui/maomi/MmLaunchActivity;

    .line 8
    iget-object p2, p2, Lcom/comeback/data/ui/maomi/MmLaunchActivity;->d:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/f;

    .line 10
    invoke-interface {v0}, Li/f;->cancel()V

    goto :goto_0

    .line 11
    :cond_2
    iget-object p2, p0, Lcom/comeback/data/ui/maomi/MmLaunchActivity$a;->a:Lcom/comeback/data/ui/maomi/MmLaunchActivity;

    .line 12
    iget-boolean v0, p2, Lcom/comeback/data/ui/maomi/MmLaunchActivity;->e:Z

    if-nez v0, :cond_3

    .line 13
    iput-boolean v1, p2, Lcom/comeback/data/ui/maomi/MmLaunchActivity;->e:Z

    .line 14
    invoke-interface {p1}, Li/f;->S()Li/e0;

    move-result-object p1

    .line 15
    iget-object p1, p1, Li/e0;->b:Li/x;

    .line 16
    iget-object p1, p1, Li/x;->j:Ljava/lang/String;

    const-string p2, "GAMTDUQHVlwfFRsDFwcCAlk="

    .line 17
    invoke-static {p2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 18
    sput-object p1, Lf/e/a/k/b;->h:Ljava/lang/String;

    .line 19
    invoke-static {}, Lf/e/a/k/j;->b()Lf/e/a/k/j;

    move-result-object p2

    const-string v0, "YjAvOyY+"

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lf/e/a/k/j;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object p1, p0, Lcom/comeback/data/ui/maomi/MmLaunchActivity$a;->a:Lcom/comeback/data/ui/maomi/MmLaunchActivity;

    .line 21
    monitor-enter p1

    .line 22
    :try_start_0
    invoke-static {p1}, Lcom/comeback/data/ui/maomi/MainActivity;->m(Landroid/content/Context;)V

    .line 23
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2

    :cond_3
    :goto_1
    return-void
.end method

.method public d(Li/f;Ljava/io/IOException;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/maomi/MmLaunchActivity$a;->a:Lcom/comeback/data/ui/maomi/MmLaunchActivity;

    .line 2
    iget-object p1, p1, Lcom/comeback/data/ui/maomi/MmLaunchActivity;->d:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 4
    iget-object p1, p0, Lcom/comeback/data/ui/maomi/MmLaunchActivity$a;->a:Lcom/comeback/data/ui/maomi/MmLaunchActivity;

    .line 5
    invoke-virtual {p1}, Lcom/comeback/data/ui/maomi/MmLaunchActivity;->m()V

    :cond_0
    return-void
.end method
