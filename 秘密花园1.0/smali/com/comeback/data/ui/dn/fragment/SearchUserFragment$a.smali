.class public Lcom/comeback/data/ui/dn/fragment/SearchUserFragment$a;
.super Lcom/comeback/data/base/BaseRefreshFragment$a;
.source "SearchUserFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/dn/fragment/SearchUserFragment;->l(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseRefreshFragment$a<",
        "Lcom/comeback/data/ui/dn/bean/UserList;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/comeback/data/ui/dn/fragment/SearchUserFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/dn/fragment/SearchUserFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/fragment/SearchUserFragment$a;->f:Lcom/comeback/data/ui/dn/fragment/SearchUserFragment;

    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseRefreshFragment$a;-><init>(Lcom/comeback/data/base/BaseRefreshFragment;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/comeback/data/ui/dn/bean/UserList;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/dn/fragment/SearchUserFragment$a;->f:Lcom/comeback/data/ui/dn/fragment/SearchUserFragment;

    invoke-static {v0, p1}, Lcom/comeback/data/ui/dn/fragment/SearchUserFragment;->m(Lcom/comeback/data/ui/dn/fragment/SearchUserFragment;Lcom/comeback/data/ui/dn/bean/UserList;)V

    return-void
.end method
