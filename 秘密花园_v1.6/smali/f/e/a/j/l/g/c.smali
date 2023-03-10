.class public Lf/e/a/j/l/g/c;
.super Ljava/lang/Object;
.source "HostFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/fulao2/fragment/HostFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/fulao2/fragment/HostFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/j/l/g/c;->a:Lcom/comeback/data/ui/fulao2/fragment/HostFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lf/e/a/j/l/g/c;->a:Lcom/comeback/data/ui/fulao2/fragment/HostFragment;

    .line 2
    iget-object v0, v0, Lcom/comeback/data/ui/fulao2/fragment/HostFragment;->g:Lcom/comeback/data/ui/fulao2/bean/Host;

    .line 3
    invoke-virtual {v0}, Lcom/comeback/data/ui/fulao2/bean/Host;->getStreamString()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p2, v0, p2

    .line 4
    iget-object v0, p0, Lf/e/a/j/l/g/c;->a:Lcom/comeback/data/ui/fulao2/fragment/HostFragment;

    iget-object v0, v0, Lcom/comeback/data/ui/fulao2/fragment/HostFragment;->tvStream:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-static {}, Lf/e/a/k/j;->b()Lf/e/a/k/j;

    move-result-object v0

    sget-object v1, Lcom/comeback/data/ui/fulao2/fragment/HostFragment;->j:Ljava/lang/String;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lf/e/a/k/j;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/comeback/data/ui/fulao2/bean/VideoInfo;->StreamHost:Ljava/lang/String;

    const-string p2, "0urkgubR37vjg774"

    .line 7
    invoke-static {p2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lc/a/a/b/g/h;->p1(Ljava/lang/String;)V

    .line 8
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
