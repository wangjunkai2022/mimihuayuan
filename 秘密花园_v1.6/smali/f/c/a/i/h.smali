.class public Lf/c/a/i/h;
.super Ljava/lang/Object;
.source "WheelOptions.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Lcom/contrarywind/view/WheelView;

.field public b:Lcom/contrarywind/view/WheelView;

.field public c:Lcom/contrarywind/view/WheelView;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "TT;>;>;>;"
        }
    .end annotation
.end field

.field public g:Z

.field public h:Z

.field public i:Lf/f/c/b;

.field public j:Lf/f/c/b;

.field public k:Lf/c/a/h/c;


# direct methods
.method public constructor <init>(Landroid/view/View;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lf/c/a/i/h;->g:Z

    .line 3
    iput-boolean p2, p0, Lf/c/a/i/h;->h:Z

    .line 4
    sget p2, Lf/c/a/b;->options1:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/contrarywind/view/WheelView;

    iput-object p2, p0, Lf/c/a/i/h;->a:Lcom/contrarywind/view/WheelView;

    .line 5
    sget p2, Lf/c/a/b;->options2:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/contrarywind/view/WheelView;

    iput-object p2, p0, Lf/c/a/i/h;->b:Lcom/contrarywind/view/WheelView;

    .line 6
    sget p2, Lf/c/a/b;->options3:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/contrarywind/view/WheelView;

    iput-object p1, p0, Lf/c/a/i/h;->c:Lcom/contrarywind/view/WheelView;

    return-void
.end method
