/**
 * Authors: Frank Benoit <keinfarbton@googlemail.com>
 */

module java.io.InputStream;

import java.lang.all;

public abstract class InputStream {


    public this (){
    }

    public abstract int read();

    public ptrdiff_t read( byte[] b ){
        foreach( uint idx, ref byte val; b ){
            size_t c = read();
            if( c == -1 ){
                return ( idx == 0 ) ? -1 : idx;
            }
            b[ idx] = cast(byte)( c & 0xFF );
        }
        return b.length;
    }

    public ptrdiff_t read( byte[] b, size_t off, size_t len ){
        return read( b[ off .. off+len ] );
    }

    public long skip( long n ){
        implMissing( __FILE__, __LINE__ );
        return 0L;
    }

    public size_t available(){
        return 0;
    }

    public void close(){
        implMissing( __FILE__, __LINE__ );
    }

    public synchronized void mark( size_t readlimit ){
        implMissing( __FILE__, __LINE__ );
    }

    public synchronized void reset(){
        implMissing( __FILE__, __LINE__ );
    }

    public bool markSupported(){
        implMissing( __FILE__, __LINE__ );
        return false;
    }


}


