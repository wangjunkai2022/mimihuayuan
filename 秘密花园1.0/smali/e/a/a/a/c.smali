.class public final synthetic Le/a/a/a/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lf/i/a/a/j1/d$c;

.field public final synthetic b:Lf/i/a/a/j1/f$a;

.field public final synthetic c:Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;

.field public final synthetic d:Lf/i/a/a/j1/d;


# direct methods
.method public synthetic constructor <init>(Lf/i/a/a/j1/d$c;Lf/i/a/a/j1/f$a;Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;Lf/i/a/a/j1/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/a/c;->a:Lf/i/a/a/j1/d$c;

    iput-object p2, p0, Le/a/a/a/c;->b:Lf/i/a/a/j1/f$a;

    iput-object p3, p0, Le/a/a/a/c;->c:Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;

    iput-object p4, p0, Le/a/a/a/c;->d:Lf/i/a/a/j1/d;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Le/a/a/a/c;->a:Lf/i/a/a/j1/d$c;

    iget-object v1, p0, Le/a/a/a/c;->b:Lf/i/a/a/j1/f$a;

    iget-object v2, p0, Le/a/a/a/c;->c:Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;

    iget-object v3, p0, Le/a/a/a/c;->d:Lf/i/a/a/j1/d;

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;->a(Lf/i/a/a/j1/d$c;Lf/i/a/a/j1/f$a;Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;Lf/i/a/a/j1/d;Landroid/content/DialogInterface;I)V

    return-void
.end method
