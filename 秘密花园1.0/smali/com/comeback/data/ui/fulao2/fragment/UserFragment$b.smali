.class public Lcom/comeback/data/ui/fulao2/fragment/UserFragment$b;
.super Ljava/lang/Object;
.source "UserFragment.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/fulao2/fragment/UserFragment;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/fulao2/fragment/UserFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/fulao2/fragment/UserFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fulao2/fragment/UserFragment$b;->a:Lcom/comeback/data/ui/fulao2/fragment/UserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p1, "XxYXFBhJFhwDEkJKGRlNE04BVFNcXVpd"

    .line 1
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/comeback/data/ui/fulao2/bean/VideoInfo;->StreamHost:Ljava/lang/String;

    .line 2
    invoke-static {}, Lf/e/a/k/j;->b()Lf/e/a/k/j;

    move-result-object p1

    iget-object p2, p0, Lcom/comeback/data/ui/fulao2/fragment/UserFragment$b;->a:Lcom/comeback/data/ui/fulao2/fragment/UserFragment;

    .line 3
    iget-object p2, p2, Lcom/comeback/data/ui/fulao2/fragment/UserFragment;->g:Ljava/lang/String;

    const/4 v0, 0x3

    .line 4
    invoke-virtual {p1, p2, v0}, Lf/e/a/k/j;->g(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_1
    const-string p1, "XxYXFBhJFhwDEkJKGRlNAFobFgofElAdEAg="

    .line 5
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/comeback/data/ui/fulao2/bean/VideoInfo;->StreamHost:Ljava/lang/String;

    .line 6
    invoke-static {}, Lf/e/a/k/j;->b()Lf/e/a/k/j;

    move-result-object p1

    iget-object p2, p0, Lcom/comeback/data/ui/fulao2/fragment/UserFragment$b;->a:Lcom/comeback/data/ui/fulao2/fragment/UserFragment;

    .line 7
    iget-object p2, p2, Lcom/comeback/data/ui/fulao2/fragment/UserFragment;->g:Ljava/lang/String;

    const/4 v0, 0x2

    .line 8
    invoke-virtual {p1, p2, v0}, Lf/e/a/k/j;->g(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_2
    const-string p1, "XxYXFBhJFhwDEkJKDxlNGFQbAgkGXVpd"

    .line 9
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/comeback/data/ui/fulao2/bean/VideoInfo;->StreamHost:Ljava/lang/String;

    .line 10
    invoke-static {}, Lf/e/a/k/j;->b()Lf/e/a/k/j;

    move-result-object p1

    iget-object p2, p0, Lcom/comeback/data/ui/fulao2/fragment/UserFragment$b;->a:Lcom/comeback/data/ui/fulao2/fragment/UserFragment;

    .line 11
    iget-object p2, p2, Lcom/comeback/data/ui/fulao2/fragment/UserFragment;->g:Ljava/lang/String;

    const/4 v0, 0x1

    .line 12
    invoke-virtual {p1, p2, v0}, Lf/e/a/k/j;->g(Ljava/lang/String;I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f09019b
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
