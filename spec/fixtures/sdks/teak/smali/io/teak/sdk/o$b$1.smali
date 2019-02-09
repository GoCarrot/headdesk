.class final Lio/teak/sdk/o$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/o$b;->a(Lio/teak/sdk/o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lio/teak/sdk/o$a;

.field private synthetic b:Lio/teak/sdk/o;


# direct methods
.method constructor <init>(Lio/teak/sdk/o$b;Lio/teak/sdk/o$a;Lio/teak/sdk/o;)V
    .locals 0

    .prologue
    .line 90
    iput-object p2, p0, Lio/teak/sdk/o$b$1;->a:Lio/teak/sdk/o$a;

    iput-object p3, p0, Lio/teak/sdk/o$b$1;->b:Lio/teak/sdk/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lio/teak/sdk/o$b$1;->a:Lio/teak/sdk/o$a;

    iget-object v1, p0, Lio/teak/sdk/o$b$1;->b:Lio/teak/sdk/o;

    invoke-interface {v0, v1}, Lio/teak/sdk/o$a;->a(Lio/teak/sdk/o;)V

    .line 94
    return-void
.end method
