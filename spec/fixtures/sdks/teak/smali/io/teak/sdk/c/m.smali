.class public final Lio/teak/sdk/c/m;
.super Lio/teak/sdk/o;
.source "SourceFile"


# instance fields
.field public final b:Lio/teak/sdk/b/e$b;


# direct methods
.method public constructor <init>(Lio/teak/sdk/b/e;Lio/teak/sdk/b/e$b;Lio/teak/sdk/b/e$b;)V
    .locals 1
    .param p1    # Lio/teak/sdk/b/e;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/teak/sdk/b/e$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/teak/sdk/b/e$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 16
    const-string v0, "SessionStateEvent"

    invoke-direct {p0, v0}, Lio/teak/sdk/o;-><init>(Ljava/lang/String;)V

    .line 19
    iput-object p2, p0, Lio/teak/sdk/c/m;->b:Lio/teak/sdk/b/e$b;

    .line 21
    return-void
.end method
