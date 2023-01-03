.class public Lf/c/a/g/a;
.super Ljava/lang/Object;
.source "PickerOptions.java"


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:I

.field public E:I

.field public F:I

.field public G:I

.field public H:I

.field public I:I

.field public J:F

.field public K:Z

.field public L:Z

.field public M:Z

.field public N:Landroid/graphics/Typeface;

.field public O:Lcom/contrarywind/view/WheelView$b;

.field public P:I

.field public Q:Z

.field public a:Lf/c/a/h/d;

.field public b:Landroid/view/View$OnClickListener;

.field public c:Lf/c/a/h/c;

.field public d:Lf/c/a/h/a;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:I

.field public s:Landroid/view/ViewGroup;

.field public t:Landroid/content/Context;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lf/c/a/g/a;->n:Z

    .line 3
    iput-boolean v0, p0, Lf/c/a/g/a;->o:Z

    .line 4
    iput-boolean v0, p0, Lf/c/a/g/a;->p:Z

    .line 5
    iput-boolean v0, p0, Lf/c/a/g/a;->q:Z

    const v1, -0xfa8201

    .line 6
    iput v1, p0, Lf/c/a/g/a;->x:I

    .line 7
    iput v1, p0, Lf/c/a/g/a;->y:I

    const/high16 v1, -0x1000000

    .line 8
    iput v1, p0, Lf/c/a/g/a;->z:I

    const/4 v1, -0x1

    .line 9
    iput v1, p0, Lf/c/a/g/a;->A:I

    const v2, -0xa0a0b

    .line 10
    iput v2, p0, Lf/c/a/g/a;->B:I

    const/16 v2, 0x11

    .line 11
    iput v2, p0, Lf/c/a/g/a;->C:I

    const/16 v2, 0x12

    .line 12
    iput v2, p0, Lf/c/a/g/a;->D:I

    .line 13
    iput v2, p0, Lf/c/a/g/a;->E:I

    const v2, -0x575758

    .line 14
    iput v2, p0, Lf/c/a/g/a;->F:I

    const v2, -0xd5d5d6

    .line 15
    iput v2, p0, Lf/c/a/g/a;->G:I

    const v2, -0x2a2a2b

    .line 16
    iput v2, p0, Lf/c/a/g/a;->H:I

    .line 17
    iput v1, p0, Lf/c/a/g/a;->I:I

    const v1, 0x3fcccccd    # 1.6f

    .line 18
    iput v1, p0, Lf/c/a/g/a;->J:F

    const/4 v1, 0x1

    .line 19
    iput-boolean v1, p0, Lf/c/a/g/a;->L:Z

    .line 20
    iput-boolean v0, p0, Lf/c/a/g/a;->M:Z

    .line 21
    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object v2, p0, Lf/c/a/g/a;->N:Landroid/graphics/Typeface;

    .line 22
    sget-object v2, Lcom/contrarywind/view/WheelView$b;->a:Lcom/contrarywind/view/WheelView$b;

    iput-object v2, p0, Lf/c/a/g/a;->O:Lcom/contrarywind/view/WheelView$b;

    const/16 v2, 0x9

    .line 23
    iput v2, p0, Lf/c/a/g/a;->P:I

    .line 24
    iput-boolean v0, p0, Lf/c/a/g/a;->Q:Z

    if-ne p1, v1, :cond_0

    .line 25
    sget p1, Lf/c/a/c;->pickerview_options:I

    iput p1, p0, Lf/c/a/g/a;->r:I

    goto :goto_0

    .line 26
    :cond_0
    sget p1, Lf/c/a/c;->pickerview_time:I

    iput p1, p0, Lf/c/a/g/a;->r:I

    :goto_0
    return-void
.end method
