.class final Lio/teak/sdk/e$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/e$2;->a(Lio/teak/sdk/o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lio/teak/sdk/a/e;

.field private synthetic b:Lio/teak/sdk/e$2;


# direct methods
.method constructor <init>(Lio/teak/sdk/e$2;Lio/teak/sdk/a/e;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lio/teak/sdk/e$2$1;->b:Lio/teak/sdk/e$2;

    iput-object p2, p0, Lio/teak/sdk/e$2$1;->a:Lio/teak/sdk/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lio/teak/sdk/e$2$1;->b:Lio/teak/sdk/e$2;

    iget-object v0, v0, Lio/teak/sdk/e$2;->a:Lio/teak/sdk/e;

    iget-object v1, p0, Lio/teak/sdk/e$2$1;->a:Lio/teak/sdk/a/e;

    invoke-static {v0, v1}, Lio/teak/sdk/e;->a(Lio/teak/sdk/e;Lio/teak/sdk/a/e;)V

    .line 212
    return-void
.end method
