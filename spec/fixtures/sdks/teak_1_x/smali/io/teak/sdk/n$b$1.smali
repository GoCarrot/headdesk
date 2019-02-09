.class final Lio/teak/sdk/n$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/n$b;->a(Lio/teak/sdk/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lio/teak/sdk/n$a;

.field private synthetic b:Lio/teak/sdk/n;


# direct methods
.method constructor <init>(Lio/teak/sdk/n$b;Lio/teak/sdk/n$a;Lio/teak/sdk/n;)V
    .locals 0

    .prologue
    .line 104
    iput-object p2, p0, Lio/teak/sdk/n$b$1;->a:Lio/teak/sdk/n$a;

    iput-object p3, p0, Lio/teak/sdk/n$b$1;->b:Lio/teak/sdk/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lio/teak/sdk/n$b$1;->a:Lio/teak/sdk/n$a;

    iget-object v1, p0, Lio/teak/sdk/n$b$1;->b:Lio/teak/sdk/n;

    invoke-interface {v0, v1}, Lio/teak/sdk/n$a;->a(Lio/teak/sdk/n;)V

    .line 108
    return-void
.end method
