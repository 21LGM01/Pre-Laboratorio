using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Pre_Laboratorio
{
    public partial class Form2 : Form
    {
        public Form2()
        {
            InitializeComponent();
        }

        static int SeleFila;

        //LIMPIAR CAJAS DE TEXTO
        void limpiar()
        {
            textBox1.Text = " ";
            textBox2.Text = " ";
            textBox3.Text = " ";
            textBox4.Text = " ";
            textBox5.Text = " ";
            textBox6.Text = " ";

        }

        private void button1_Click(object sender, EventArgs e)
        {
            //LLENAR LAS FILAS CON LAS CAJAS DE TEXTO
            try
            {
                if (dataGridView1.RowCount != 0)
                {
                    int indice = dataGridView1.CurrentRow.Index;
                    dataGridView1.Rows[indice].Cells[0].Value = textBox1.Text;
                    dataGridView1.Rows[indice].Cells[1].Value = textBox2.Text;
                    dataGridView1.Rows[indice].Cells[2].Value = textBox3.Text;
                    dataGridView1.Rows[indice].Cells[3].Value = textBox4.Text;
                    dataGridView1.Rows[indice].Cells[4].Value = textBox5.Text;
                    dataGridView1.Rows[indice].Cells[5].Value = textBox6.Text;

                    MessageBox.Show("Pruducto Guardado");
                }
            }
            //SI NO SE SELECCIONA UNA FILA NO SERVIRAN DE NADA LOS DATOS
            catch (Exception)
            {
                MessageBox.Show("Selecciona una fila para guardar");
                limpiar();

            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            //ELIMINAR LA FILA QUE SE SELECCIONE
            try
            {
                if (SeleFila >= 0)
                {
                    int indiceAEliminar = dataGridView1.CurrentRow.Index;
                    dataGridView1.Rows.RemoveAt(indiceAEliminar);
                    MessageBox.Show("Producto Eliminado");
                    limpiar() ;
                }
                else
                    MessageBox.Show("Selecciona la fila para eliminars");
                
            }
            catch (Exception)
            {
                MessageBox.Show("No se a seleccionado alguna fila");
                limpiar();

            }
        }

        private void textBox6_TextChanged(object sender, EventArgs e)
        {

        }
    }
}

