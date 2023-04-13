class Bullet extends Sprite {
    
    Bullet(float x, float y, PVector velocity, int team) {
        super(x, y, 10, 10);
        vel = velocity;
        this.team = team;
    }

    Bullet(PVector pos, PVector vel, int team){
        this(pos.x, pos.y, vel, team);
    }

    Bullet(PVector pos, PVector vel, int team, boolean tracking){
        this(pos.x, pos.y, vel, team);
        this.tracking = tracking;
    }
    
    @Override
    void update() {
        if(tracking){
            pos.x += (pos.x + _SM.player.pos.x) / 3.0;
            pos.add(vel);
        } else{
            pos.add(vel);
        }
    }
}
